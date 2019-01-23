#include <stdio.h>
void multiplication(int a[][3], int b[][3], int ans[][3])
{
    int sum;
    for (int i = 0; i < 3; i++)
    {
        for (int j = 0; j < 3; j++)
        {
            sum = 0;
            for (int k = 0; k < 3; k++)
            {
                sum += (*(*(a + i) + k)) * (*(*(b + k) + j));
            }
            *(*(ans + i) + j) = sum;
        }
    }
}
int main()
{
    int a[3][3];
    int b[3][3];
    int ans[3][3];
    for(int i=0; i<3; i++)
    {
        for(int j=0; j<3; j++)
        {
            a[i][j]=2*(i+j);
            b[i][j]=(i*i)+(j*j);
        }
    }
    multiplication(a, b, ans);
    return 0;
}
