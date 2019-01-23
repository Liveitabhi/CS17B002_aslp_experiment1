#include <stdio.h>
int main()
{
	register int a = 5;
	register int b = 10;
	register int add = a+b;
	register int sub = a-b;
	register int mul = a*b;
	register int div = a/b;
	register int rem = a%b;
	register int and_logic = a & b;
	register int or_logic = a | b;
	register int not_logic = ~a;
	register int xor_logic = a ^ b;
}

