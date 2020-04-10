#include <stdlib.h>
#include <stdio.h>
#include <string.h>

void sout(char *s) {
	while(*s)
		putchar(*s++);
}

int main(int argc, char **argv) {
	if(argc < 3) {
		return(1);
	}

	char c = argv[1][0];
	char buf[256] = {0};
	unsigned char i = 0;
	char *s = argv[2];
	do {
		putchar(*(s++));
	} while(*s && *s != c);
	while (*s) {
		buf[i++] = *(s++);
		if(*s == c) {
			sout(buf);
			memset(buf, 0, 256);
			i = 0;
		}
	} 
	putchar('\n');
	return 0;
}
