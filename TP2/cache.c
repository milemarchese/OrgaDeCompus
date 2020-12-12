#include "cache.h"
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <stdlib.h>
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


unsigned int is_dirty(int way, int blocknum) {
	return cache.cache[blocknum][way].bit_dirty;
}

void update_lru(block_t* set){
  for(int i = 0 ; i < cache.n_ways ; i++) {
    set[i].counter++;
  }
}

// debe leer el bloque blocknum de memoria y guardarlo en el lugar que le corresponda en la memoria caché.
void read_block(int blocknum) {
	int setnum = blocknum % (1 << cache.n_bits_idx);
	int tag = blocknum >> cache.n_bits_idx;
	int way = find_lru(setnum);

	// Si el bloque es dirty, escribir en memoria principal
	if (cache.cache[setnum][way].bit_dirty == 1) {
		write_block(way, setnum);
	}

	update_lru(cache.cache[setnum]);
	cache.cache[setnum][way].tag = tag;
	cache.cache[setnum][way].bit_dirty = 0;
	cache.cache[setnum][way].bit_valid = 1;
	cache.cache[setnum][way].counter = 0;
	memcpy(cache.cache[setnum][way].data, &main_memory[blocknum << cache.n_bits_off], cache.block_size);
}

// debe escribir en memoria los datos contenidos en el bloque setnum de la vıa way.
void write_block(int way, int setnum) {
	block_t block = cache.cache[setnum][way];

	int blocknum = (block.tag << cache.n_bits_idx) + setnum;
	memcpy(&main_memory[blocknum << cache.n_bits_off], block.data, cache.block_size);
}





char read_byte(int address) {
	int idx = find_set(address);
	int tag = address >> (cache.n_bits_idx + cache.n_bits_off);
	int offset = address % (1 << cache.n_bits_off);
	block_t* set = cache.cache[idx];

	for (int i = 0; i < cache.n_ways; i++) {
		if (set[i].tag == tag && set[i].bit_valid) {
			// TODO: Cambiar a archivo output
			printf("Hit, read %d \n", set[i].data[offset]);
      update_lru(set);
			set[i].counter = 0;
			cache.n_hits++;
			return set[i].data[offset];
		}
	}

	cache.n_misses++;
	read_block(address >> cache.n_bits_off);
	// TODO: Cambiar a archivo output
	printf("Miss, read %d \n", main_memory[address]);
	return main_memory[address];
}


void write_byte(int address, char value) {

	int idx = find_set(address);
	int tag = address >> (cache.n_bits_idx + cache.n_bits_off);
	int offset = address % (1 << cache.n_bits_off);
	block_t* set = cache.cache[idx];

	for (int i = 0; i < cache.n_ways; i++) {
		if (set[i].tag == tag && set[i].bit_valid) {
			// TODO: Cambiar a archivo output
			printf("Hit\n");
      update_lru(set);
			set[i].counter = 0;
			cache.n_hits++;
			set[i].data[offset] = value;
			return;
		}
	}

	// Aclarar en el informe que para simplificar el codigo,
	// PRIMERO se escribe en memoria y despues se levanta en cache.
	printf("Miss\n");
	main_memory[address] = value;
	read_block(address >> cache.n_bits_off);
	cache.n_misses++;
}


int get_miss_rate() {
	return (cache.n_misses * 100 / (cache.n_hits + cache.n_misses));
}
