#include "cache.h"
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <stdlib.h>
#include "utils.h"


cache_t cache;


/*
 * Returns the number of sets in the N-ways associative cache
 */
unsigned int get_index_size() {
    return cache.cache_size * KILOBYTES / (cache.block_size * cache.n_ways);
}

/*
 * Returns the number of bits of x
 */
unsigned int log_2(unsigned int x) {
	int result = 0;
	while ((x = x >> 1)) result++;
	return result;
}

/*
 * Initialize the cache sets as invalid, the simulated memory at 0, and the misses rate at 0.
 */
void init() {
	unsigned int n_idx = get_index_size();
	cache.cache = calloc(n_idx, sizeof(block_t*));
	for (unsigned int i = 0; i < n_idx; i++) {
		cache.cache[i] = calloc(cache.n_ways, sizeof(block_t));
	}

	cache.n_hits = 0;
	cache.n_misses = 0;
}


unsigned int find_set(int address) {
	unsigned int n_bits_idx = log_2(get_index_size());
	unsigned int n_bits_off = log_2(cache.block_size);
	unsigned int n_bits_tag = N_BITS - n_bits_idx - n_bits_off;

	// TODO: Simplificar (podria ser con modulo)
	address = address << n_bits_tag;
	address = address >> n_bits_tag;
	address = address >> n_bits_off;
	return address;
}


unsigned int find_lru(int setnum) {
	int minway = 0;
	block_t* set = cache.cache[setnum];
	for (unsigned int i = 1; i < cache.n_ways; i++) {
		if (set[i].counter < set[minway].counter) {
			minway = i;
		}
	}
	return minway;
}


unsigned int is_dirty(int way, int blocknum) {
	return cache.cache[blocknum][way].bit_dirty;
}


void read_block(int blocknum) {
	// Your code here
}


void write_block(int way, int setnum) {
	// Your code here
}


char read_byte(int address) {
	// Your code here
	return 0;
}


void write_byte(int address, char value) {
	// Your code here
}


int get_miss_rate() {
	// Your code here
	return 0;
}