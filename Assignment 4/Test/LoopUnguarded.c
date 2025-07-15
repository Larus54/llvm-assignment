void calculateVectors(int N, int* a, int* b, int* c, int* d) {
  int i;
  for (i = 0; i < N; i++) {
    a[i] = 1 / b[i] * c[i];
  }

  for (i = 0; i < N; i++) {
    d[i] = a[i] + c[i];
  }
  return;
}