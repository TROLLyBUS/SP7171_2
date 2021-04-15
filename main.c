#include <stdio.h>

int main() {
	int a=3, b=7;
	char array[10] = {1, 2, 3, 127, 127, -6, 7, 8, 9, 10};
	char sum = 0;
	for(int i=0;i<10;i++){
		int sum_before = sum;
		if(i<a || i>b || array[i] < 0) continue;
		
		sum+=array[i];
		if (sum_before>sum){
			printf("Произошло переполнение\n");
		}		
	}
	
	printf("Сумма положительных байтов %d и %d равна %d\n", a, b, sum);
	return 0;
}
