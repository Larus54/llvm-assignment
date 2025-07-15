void calculateVectors(int N, int* a, int* b, int* c, int* d) {
  int i;
  for (i = 0; i < N; i++) {
    a[i] = 1 / b[i] * c[i];
  }

  for (i = 0; i < N; i++) {
    d[i] = a[i] + c[i];
  }

  int j;
  N = 25;
  for (j = 0; j < N; j++) {
    a[j] = 1 / b[j] * c[j];
  }

  for (j = 0; j < N; j++) {
    d[j] = a[j] + c[j];
  }
  return;
}