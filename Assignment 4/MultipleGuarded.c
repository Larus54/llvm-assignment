void calcoli(int *a, int *b, int *c, int *d, int N) {
    int i=0;
    if (N > 0) {
        do {
            a[i] = 1/b[i]*c[i];    
            i += 1;
        } while (i < N);
    }
    i=0;
    if (N > 0) {
        do {
            d[i] = a[i]+c[i];    
            i += 1;
        } while (i < N);
    }

    int j=0;
    N = 25;
    if (N > 0) {
        do {
            a[j] = 1/b[j]*c[j];    
            j += 1;
        } while (j < N);
    }
    j=0;
    if (N > 0) {
        do {
            d[j] = a[j]+c[j];    
            j += 1;
        } while (j < N);
    }
}