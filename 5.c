#include <stdio.h>
int main()
{
	int a[10] = {6,45,23,17,85,889,664,24,2,333};
	int min=a[0], max=a[0];
	for(int i=1; i<10; i++)
	{
		if(a[i]>max)
		{
			max = a[i];
		}
		if(a[i]<min)
		{
			min=a[i];
		}
	}
}
