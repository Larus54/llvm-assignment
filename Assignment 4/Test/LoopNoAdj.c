void calcoli(int *a, int *b, int *c, int *d, int N) {
    int i=0;
    int e = 5;
    if (N > 0) {
        do {
            a[i] = 1/b[i]*c[i];    
            i += 1;
        } while (i < N);
    }
    i=0;
    if(e>0)
    {
    	int c = 0;
    	c = 5;
    	e--;
    }
    if (N > 0) {
        do {
            d[i] = a[i]+c[i];    
            i += 1;
        } while (i < N);
    }
}
