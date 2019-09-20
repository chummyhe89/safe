void value(int* p){
	*p=(*p) + 1;
	p=0;
}

void ref(int*& p){
	*p=(*p) + 1;
	p=0;
}


int main(){
int f[] = {1};
int *h = f;
value(h);
ref(h);
}
