#ifndef CACHE_H
#define CACHE_H

typedef struct block {
	int bit_valid;
	int bit_dirty;
	int tag;
	unsigned int counter;
} block_t;

typedef struct cache {
	block_t** cache;
	unsigned int n_ways;
	unsigned int cache_size;
	unsigned int block_size;
	int n_hits;
	int n_misses;
} cache_t;

void init();

unsigned int find_set(int address);

unsigned int find_lru(int setnum);

unsigned int is_dirty(int way, int setnum);

void read_block(int blocknum);

void write_block(int way, int setnum);

char read_byte(int address);

void write_byte(int address, char value);

int get_miss_rate();

#endif
