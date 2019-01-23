#include <stdio.h>
int main()
{
	register int a = 4;
	register int b = 6;
	a = a + b;
	b = a - b;
	a = a - b;
}
