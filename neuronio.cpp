#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <cstdlib>

using namespace std;

int main(void){
	int x = 0;
	int y = 100;
	int x1 =(x + rand()% (y-x+1));
	double s1 = (double)x1/100;
    cout << "S1 = " << s1 << "\n";
	int repeticao = 0;
	double taxa_a = 0;
	cout <<"\nInsira o numero de tentativas a serem feitas:";
	cin >> repeticao;
	cout <<"\nInsira a taxa de aprendizado:";
	cin >> taxa_a;
	double soma_pesos = 0;
	double soma_numeros = 0;
	for (int i = 1; i <= repeticao; i++){
		soma_pesos = (s1*i)+13;
		soma_numeros = i+13;
		s1 = s1+((soma_numeros-soma_pesos)*taxa_a*(double)i);
    cout << i <<"+ 13 = "<< soma_pesos << endl;
	}
    cout <<"\n\n";
	for (int i = 1; i <= 100; i++){
		soma_pesos = (s1*i)+13;
		cout << i <<"+ 13 = "<< soma_pesos << endl;
	}
}
