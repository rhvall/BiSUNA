// Source from: https://github.com/bstatcomp/RandomCL/blob/master/generators/tyche_i.cl
// Publication: https://link.springer.com/article/10.1007%2Fs11227-019-02756-2

/**
@file

Implements tyche-i RNG.

S. Neves, F. Araujo, Fast and small nonlinear pseudorandom number generators for computer simulation, in: International Conference on Parallel Processing and Applied Mathematics, Springer, 2011, pp. 92–101.
*/

#include "TycheI.h"

#define TYCHE_I_ROT(a,b) (((a) >> (b)) | ((a) << (32 - (b))))
/**
Generates a random 64-bit unsigned integer using tyche_i RNG.

This is alternative, macro implementation of tyche_i RNG.

@param state State of the RNG to use.
*/
#define tycheIMacroULong(state) (tycheIMacroAdvance(state), state.res)
#define tycheIMacroAdvance(state) ( \
	state.b = TYCHE_I_ROT(state.b, 7) ^ state.c, \
	state.c -= state.d, \
	state.d = TYCHE_I_ROT(state.d, 8) ^ state.a,\
	state.a -= state.b, \
	state.b = TYCHE_I_ROT(state.b, 12) ^ state.c, \
	state.c -= state.d, \
	state.d = TYCHE_I_ROT(state.d, 16) ^ state.a, \
	state.a -= state.b \
)


void tycheIAdvance(tycheIState* state)
{
	state->b = TYCHE_I_ROT(state->b, 7) ^ state->c;
	state->c -= state->d;
	state->d = TYCHE_I_ROT(state->d, 8) ^ state->a;
	state->a -= state->b;
	state->b = TYCHE_I_ROT(state->b, 12) ^ state->c;
	state->c -= state->d;
	state->d = TYCHE_I_ROT(state->d, 16) ^ state->a;
	state->a -= state->b;
}

/**
Seeds tycheI RNG.

@param state Variable, that holds state of the generator to be seeded.
@param seed Value used for seeding. Should be randomly generated for each instance of generator (thread).
*/
void tycheISeed(tycheIState* state, ulong seed)
{
	state->a = seed >> 32;
	state->b = (uint)seed;
	state->c = 2654435769;
#ifdef PIPELINE
	state->d = 1367130551 ^ (state->a + state->b * (state->c + state->a * state->b));
#else
    state->d = 1367130551 ^ (get_global_id(0) + get_global_size(0) * (get_global_id(1) + get_global_size(1) * get_global_id(2)));
#endif
	for(uint i = 0; i < 20; i++){
		tycheIAdvance(state);
	}
}
