#include "cache.h"
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <stdlib.h>
#include <stdbool.h>
#include "utils.h"


typedef unsigned char main_memory_t[MAIN_MEMORY_SIZE];

main_memory_t main_memory;
cache_t cache;


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
	unsigned int n_idx = cache.cache_size * KILOBYTES / (cache.block_size * cache.n_ways);
	cache.cache = calloc(n_idx, sizeof(block_t*));
	for (unsigned int i = 0; i < n_idx; i++) {
		cache.cache[i] = calloc(cache.n_ways, sizeof(block_t));

		for (unsigned int j = 0; j < cache.n_ways; j++) {
			cache.cache[i][j].data = calloc(cache.block_size, sizeof(unsigned char));
		}
	}

	cache.n_hits = 0;
	cache.n_misses = 0;
  	cache.n_bits_idx = log_2(n_idx);
  	cache.n_bits_off = log_2(cache.block_size);
  	cache.n_bits_tag = N_BITS - cache.n_bits_idx - cache.n_bits_off;
	memset(main_memory, 0, MAIN_MEMORY_SIZE);
}


unsigned int find_set(int address) {
	address = address % (1 << (cache.n_bits_idx + cache.n_bits_off));
	address = address >> cache.n_bits_off;
	return address;
}


unsigned int find_lru(int setnum) {
	int maxway = 0;
	block_t* set = cache.cache[setnum];
	for (unsigned int i = 1; i < cache.n_ways; i++) {
		if (!set[i].bit_valid) {
			return i;
		}
		if (set[i].counter > set[maxway].counter) {
			maxway = i;
		}
	}
	return maxway;
}


unsigned int is_dirty(int way, int setnum) {
	return cache.cache[setnum][way].bit_dirty;
}

void update_lru(block_t* set){
  for(int i = 0 ; i < cache.n_ways ; i++) {
    set[i].counter++;
  }
}

void read_block(int blocknum) {
	int setnum = blocknum % (1 << cache.n_bits_idx);
	int tag = blocknum >> cache.n_bits_idx;
	int way = find_lru(setnum);

	if (is_dirty(setnum, way)) {
		write_block(way, setnum);
	}

	update_lru(cache.cache[setnum]);
	cache.cache[setnum][way].tag = tag;
	cache.cache[setnum][way].bit_dirty = false;
	cache.cache[setnum][way].bit_valid = true;
	cache.cache[setnum][way].counter = 0;
	memcpy(cache.cache[setnum][way].data, &main_memory[blocknum << cache.n_bits_off], cache.block_size);
}

void write_block(int way, int setnum) {
	block_t block = cache.cache[setnum][way];

	int blocknum = (block.tag << cache.n_bits_idx) + setnum;
	memcpy(&main_memory[blocknum << cache.n_bits_off], block.data, cache.block_size);
}


/*
 * Finds the block's way with matching tag in the set.
 * If it doesn't exist, returns -1.
 */
int find_block_way(block_t* set, int tag) {
	for (int i = 0; i < cache.n_ways; i++) {
		if (set[i].tag == tag && set[i].bit_valid) {
			return i;
		}
	}
	return -1;
}

/*
 * Finds the block's address. If the block isn't in the cache, it loads it.
 */
block_t* find_block(int address) {
	int idx = find_set(address);
	int tag = address >> (cache.n_bits_idx + cache.n_bits_off);
	block_t* set = cache.cache[idx];

	int way = find_block_way(set, tag);

	if (way != -1) { // Found the block for the given tag.
		update_lru(set);
		set[way].counter = 0;
		cache.n_hits++;
		cache.last_hit = true;
		return &set[way];
	}

	// Didn't find the block in the cache, so we load it and return the new block.
	read_block(address >> cache.n_bits_off);
	way = find_block_way(set, tag);
	cache.n_misses++;
	cache.last_hit = false;
	return &set[way];
}


char read_byte(int address) {
	int offset = address % (1 << cache.n_bits_off);
	block_t* block = find_block(address);
	return block->data[offset];
}


void write_byte(int address, char value) {
	int offset = address % (1 << cache.n_bits_off);
	block_t* block = find_block(address);
	block->data[offset] = value;
	block->bit_dirty = true;
}


int get_miss_rate() {
	return (cache.n_misses * 100 / (cache.n_hits + cache.n_misses));
}

void cache_destroy() {
	unsigned int n_idx = 1 << cache.n_bits_idx;
	for (unsigned int i = 0; i < n_idx; i++) {
		for (unsigned int j = 0; j < cache.n_ways; j++) {
			free(cache.cache[i][j].data);
		}
		free(cache.cache[i]);
	}
	free(cache.cache);
}
