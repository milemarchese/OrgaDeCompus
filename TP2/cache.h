#ifndef CACHE_H
#define CACHE_H

typedef struct block {
	int bit_valid;
	int bit_dirty;
	int tag;
	unsigned int counter;
	unsigned char* data;
} block_t;

typedef struct cache {
	block_t** cache;
	unsigned int n_ways;
	unsigned int cache_size;
	unsigned int block_size;
	unsigned int n_bits_idx;
	unsigned int n_bits_off;
	unsigned int n_bits_tag;
	int n_hits;
	int n_misses;
	int last_hit;
} cache_t;

/*
 * Pre: The cache global variable fields: n_ways, cache_size and block_size must
 * be initialized.
 * Initializes the cache from the cache global variable.
 * Sets as invalid, the simulated memory at 0, and the misses rate at 0.
 */
void init();

/*
* Receives an address and returns the cache set that belongs to that address.
*/
unsigned int find_set(int address);

/*
* Receives a set number and returns the index of a free block of the set.
* If there is no free block returns the least recently used block.
*/
unsigned int find_lru(int setnum);

/*
* Receives a set and an way and returns the state of the D bit.
*/
unsigned int is_dirty(int way, int setnum);

/*
* Receives a block number and stores the content from main memory to the corresponding
* cache block.
*/
void read_block(int blocknum);

/*
* Receives a set and an way and writes the content of the block to main memory.
*/
void write_block(int way, int setnum);

/*
* Receives an address of main memory and if it is necessary writes to the cache.
* Then proceeds to read from cache.
*/
char read_byte(int address);

/*
* Receives an address of main memory and if it is necessary writes to the cache.
* Then proceeds to write the block in cache and sets the D bit to dirty.
*/
void write_byte(int address, char value);

/*
* Returns percentage of miss rate.
*/
int get_miss_rate();

/*
* Destroys the cache.
*/
void cache_destroy();

#endif
