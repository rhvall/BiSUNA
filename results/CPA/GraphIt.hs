{-# LANGUAGE ExtendedDefaultRules #-}
{-# LANGUAGE FlexibleInstances    #-}
{-# LANGUAGE OverloadedStrings    #-}

-- stack ghc -- GraphIt.hs -O2 -fspec-constr-recursive=16 -fmax-worker-args=16 -rtsopts

-- module TransformToCSV
-- -- {
-- -- }
-- where

import           Data.Bool
import qualified Data.ByteString.Char8             as C8
import           Data.List.Split                   (chunksOf)
import           Data.Maybe
import           Graphics.Matplotlib
import qualified Text.Read                         as TR

import           Control.Concurrent                (myThreadId, threadDelay)
import           Control.Monad                     (forever)
import           Control.Monad.IO.Class            (MonadIO)
import           Data.Aeson
import qualified Data.ByteString                   as BS
import qualified Data.ByteString.Char8             as C8
import           Data.Function                     ((&))
import qualified Data.Vector.Fusion.Stream.Monadic as V
import           Streamly
import qualified Streamly.FileSystem.Handle        as FH
import qualified Streamly.Internal.Data.Fold       as FL
import qualified Streamly.Memory.Array             as SA
import           Streamly.Prelude                  (nil, (|:))
import qualified Streamly.Prelude                  as S
import           System.Environment
import           System.Exit
import qualified System.IO                         as FH

data LogType = Execution | Thread | Best | Adversary | None
    deriving (Read, Show, Eq, Ord)

abStr :: C8.ByteString
abStr = "A&B"

eveStr :: C8.ByteString
eveStr = "Eve"

data LogContent = LogContent !LogType ![C8.ByteString]
    deriving (Read, Show, Eq, Ord)

data LogFloat = LogFloat !LogType !C8.ByteString ![Double]
    deriving (Read, Show, Eq, Ord)

{-# INLINE logStrCheck #-}
logStrCheck :: C8.ByteString -> LogType
logStrCheck = fromMaybe None . TR.readMaybe . C8.unpack

{-# INLINE toLogContent #-}
toLogContent :: C8.ByteString -> LogContent
toLogContent "" = LogContent None []
toLogContent val = LogContent logT $ tail commas
    where commas = C8.split ',' val
          logT = logStrCheck $ head commas

{-# INLINE mru #-}
mru :: [C8.ByteString] -> [Double]
mru = map (read . C8.unpack)

{-# INLINE filterLT #-}
filterLT :: LogType -> C8.ByteString -> LogFloat -> Bool
filterLT lt str (LogFloat x y _) =  x == lt && y == str

{-# INLINE toData #-}
toData :: (IsStream t, Monad m) => LogType -> C8.ByteString -> t m LogFloat -> t m [Double]
toData lt str = fmap (\(LogFloat _ _ z) -> z) . S.filter (filterLT lt str)

{-# INLINE toLogFloat #-}
toLogFloat :: LogContent -> LogFloat
toLogFloat (LogContent Execution y) = LogFloat Execution (last y) $ mru (init y)
toLogFloat (LogContent Best y) = LogFloat Best (head y) (mru $ tail y)
toLogFloat (LogContent x y) = LogFloat x "" (mru y)

{-# INLINE linedStream #-}
linedStream :: FH.Handle -> SerialT IO C8.ByteString
linedStream src = fmap BS.concat linedSep
    where  rsrc = S.unfold FH.read src
           charted = fmap BS.singleton rsrc
           linedSep = S.splitOn (== "\n") FL.toList charted

figPlot indx ab name = line indx ab @@ [o2 "linewidth" 1] % title name % xlabel "Generation" % ylabel "Score" % grid True

parse ["-h"] = usage   >> exit
parse ["-v"] = version >> exit
parse [x]    = return x
parse _      = usage   >> exit

usage   = putStrLn "Usage: GraphIt [-vh] file"
version = putStrLn "Haskell GraphIt v0.1"
exit    = exitWith ExitSuccess
die     = exitWith (ExitFailure 1)

main :: IO ()
main = do
    fileName <- getArgs >>= parse
    src <- FH.openFile fileName FH.ReadMode
    let lined = linedStream src
    let mappedCont = fmap toLogContent lined
    let filCont = S.filter (\(LogContent x _) -> x /= None) mappedCont
    let mappedFloat = fmap (\x -> toLogFloat x) filCont
    let fBst = toData Best abStr $ mappedFloat
    let abPair = fmap (\x -> (head x, x !! 1)) fBst

    let sumF = FL.Fold (\x (y,z) -> return $ x + y / 100) (return 0.0) return
    let sumS = FL.Fold (\x (y,z) -> return $ x + z / 100) (return 0.0) return
    let sumI = FL.Fold (\((z, _, _)) (x,y) -> return $ (z + 1, x, y)) (return (0, 0, 0)) return

    let chunked = S.chunksOf 100 (FL.tee sumF sumS) abPair
    let indexed = S.scan sumI chunked
    abeLst <- S.toList indexed

    let fldSplit (x, y, z) (x', y', z') =  (x ++ [x'], y ++ [y'], z ++ [z'])
    let (indx', ab', eve') = foldl fldSplit ([],[],[]) abeLst
    let indx = init . drop 1 $ indx'
    let ab = init . drop 1 $ ab'
    let eve = init . drop 1 $ eve'

    let mPlotAB = figPlot indx ab "Best A&B"
    let mPlotEve = figPlot indx eve "Related Eve"
    file "1-BestAB" mPlotAB
    file "2-RelatedEve" mPlotEve
    print "Files stored"
    FH.hClose src
    -- print $ bestEve



-- (\(LogContent x _) -> x == ) mappedCont
-- mdensityBandwidth = densityBandwidth [2.1, 1.3, 0.4, 1.9, 5.1, 6.2] 1.5 (Just (-6, 11)) % ylim 0 0.2

-- histogram2D x y @@ [o2 "bins" 40, o2 "norm" $ lit "mcolors.LogNorm()"]
--   % setAx
--   % colorbar
