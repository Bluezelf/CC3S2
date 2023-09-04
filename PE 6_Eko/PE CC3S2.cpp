#include <iostream>

using namespace std;

int main(){
	int num_arboles, cant_madera, sub_total;
	int aux;
	int array[4];
	
	num_arboles = 4;
	cant_madera = 7;
	array[0] = 20;
	array[1] = 15;
	array[2] = 10;
	array[3] = 17;
	
    //for(int i = 0; i<4; i++){
	//	cin>>array[i];
	//}

	for(int i = 0; i<4; i++){
		sub_total = sub_total + array[i];
	}
	
	if(sub_total < cant_madera){
		cout<<"error";
	}
	
	int auxi;
	while(aux <= cant_madera){
		for(int j = 0; j<4; j++){
			for(int i = 1; i< sub_total; i++){
				if(array[j] - i >= 0){
					auxi = auxi + i;
					aux = auxi;	
				}
				cout<<i<<endl;
			}
		}	
	}
	
	
	
	
	
    return 0;
}
