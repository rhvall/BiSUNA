{-# LANGUAGE ExtendedDefaultRules #-}
{-# LANGUAGE OverloadedStrings    #-}

-- stack ghc -- TransformToCSV.hs -O2 -fspec-constr-recursive=16 -fmax-worker-args=16 -rtsopts

-- module TransformToCSV
-- -- {
-- -- }
-- where

import           Data.Bool
import qualified Data.ByteString.Char8 as C8
import           Data.List.Split       (chunksOf)
import           Data.Maybe
import           Graphics.Matplotlib
import qualified Text.Read             as TR

data LogType = Execution | Thread | Best | Adversary | None
    deriving (Read, Show, Eq, Ord)

abStr :: C8.ByteString
abStr = "A&B"

eveStr :: C8.ByteString
eveStr = "Eve"

data LogContent = LogContent LogType [C8.ByteString]
    deriving (Read, Show, Eq, Ord)

data LogFloat = LogFloat LogType C8.ByteString [Double]
    deriving (Read, Show, Eq, Ord)

logStrCheck :: C8.ByteString -> LogType
logStrCheck = fromMaybe None . TR.readMaybe . C8.unpack

toLogContent :: C8.ByteString -> LogContent
toLogContent "" = LogContent None []
toLogContent val = LogContent logT $ tail commas
    where commas = C8.split ',' val
          logT = logStrCheck $ head commas

mru :: [C8.ByteString] -> [Double]
mru = map (read . C8.unpack)

toData :: LogType -> C8.ByteString -> [LogFloat] -> [Double]
toData lt str = map (\(LogFloat _ _ z) -> head z) . filter (filterLT lt str)
    where filterLT lt str = (\(LogFloat x y _) -> x == lt && y == str)

toDataSnd :: [LogFloat] -> [Double]
toDataSnd = map (\(LogFloat _ _ z) -> z !! 1) . filter filterLT
    where filterLT = (\(LogFloat x y _) -> x == Best && y == abStr)

toLogFloat :: LogContent -> LogFloat
toLogFloat (LogContent Execution y) = LogFloat Execution (last y) $ mru (init y)
toLogFloat (LogContent Best y) = LogFloat Best (head y) (mru $ tail y)
toLogFloat (LogContent x y) = LogFloat x "" (mru y)

getThreadBest :: [LogFloat] -> [(Double, Double)]
getThreadBest val = maxFunc every24
    where abvVals (LogFloat _ _ y) = (y !! 2, y !! 3)
          dataTh = filter (\(LogFloat x _ _) -> x == Thread) val
          every24 = chunksOf 24 $ map abvVals dataTh
          maxFunc = map (foldr (\(x, y) (z, w) -> bool (x, y) (z, w) (z > x)) (-1000000,-1000000))

meanValue :: Int -> [Double] -> [Double]
meanValue len lst = map (\x -> x / fromIntegral len) . map sum $ chunksOf len lst

figPlot indx ab name = line indx ab @@ [o2 "linewidth" 1] % title name % xlabel "Generation" % ylabel "Score" % grid True

main :: IO ()
main = do
    filed <- C8.readFile "log.txt"
    let lined = C8.lines filed
    let mappedCont = map toLogContent lined
    let filCont = filter (\(LogContent x _) -> x /= None) mappedCont
    let mappedFloat = map toLogFloat filCont
    let lstIndex = map (\(x,y) -> x) . zip [1 .. ]
    let bestAB = meanValue 100 $ toData Best abStr mappedFloat
    let bestEve = meanValue 100 $ toDataSnd mappedFloat
    -- let bestEve = meanValue 100 $ toData Best eveStr mappedFloat
    let thrBest = getThreadBest mappedFloat
    let thrAB = meanValue 100 $ map fst thrBest
    let thrEve = meanValue 100 $ map snd thrBest
    -- let mdensity = density abData (Just (-30000.0,30000.0))
    -- let mHist = histogram2D (lstIndex bestAB) bestAB
    let mPlotAB = figPlot [1 .. length bestAB] bestAB "Best A&B"
    let mPlotEve = figPlot [1 .. length bestEve] bestEve "Related Eve"
    -- let mPlotThAB = plot [1 .. length thrAB] thrAB % title "Thread A&B" % xlabel "Generation" % ylabel "Score"
    -- let mPlotThEve = plot [1 .. length thrEve] thrEve % title "Thread Eve" % xlabel "Generation" % ylabel "Score"
    file "1-Best-AB" mPlotAB
    file "2-Best-Eve" mPlotEve
    -- file "4-Thr-AB" mPlotThAB
    -- file "5-Thr-Eve" mPlotThEve
    print "Files stored"
    -- print $ bestEve



-- (\(LogContent x _) -> x == ) mappedCont
-- mdensityBandwidth = densityBandwidth [2.1, 1.3, 0.4, 1.9, 5.1, 6.2] 1.5 (Just (-6, 11)) % ylim 0 0.2

-- histogram2D x y @@ [o2 "bins" 40, o2 "norm" $ lit "mcolors.LogNorm()"]
--   % setAx
--   % colorbar
