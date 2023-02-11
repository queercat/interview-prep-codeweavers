#include <stdio.h>

void print_array(char* array, int size) {
	for (int i = 0; i < size; ++i) {
		printf("%c", array[i]);
	}
}


// first implementation, just create a new array. memory of O(2n) and run time of O(2n)
void reverse(char* characters, int size) {
	char reversed[size];

	// iterate over each element. 
	for (int i = size - 1; i >= 0; --i) {
		reversed[i] = characters[(size - 1) - i];
	}

	// assign the old array the new values.
	for (int i = 0; i < size; ++i) {
		characters[i] = reversed[i];
	}
}

// second implementation, just start flippin pointers. memory of O(n) and run time of O(n/2)?
void reverse_ip(char* characters, int size) {
	char* lp = characters;
	char* rp = characters + (size - 1);

	for (int i = 0; i < (size/2); ++i) {
		*(lp + i) ^= *(rp - i);
		*(rp - i) ^= *(lp + i);
		*(lp + i) ^= *(rp - i);
	}
}	

int main() {
	char text[] = {'A', 'P', 'P', 'L', 'E'};

	reverse_ip(text, 5);
	print_array(text, 5);	

	return 0;
}
