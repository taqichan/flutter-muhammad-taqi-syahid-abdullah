import 'dart:io';

double luasLingkaran(double radius) {
  return 3.14159 * radius * radius;
}

int nilaiFaktorial(int n) {
  if (n == 0 || n == 1) {
    return 1;
  } else {
    return n * nilaiFaktorial(n - 1);
  }
}

void main() {
  tugasPerulangan1();

  print(' ');
  print('================================================================');
  print(' ');

  tugasPerulangan2();

  print(' ');
  print('================================================================');
  print(' ');

  double jari2 = 5.0; // Ganti dengan nilai jari-jari yang diinginkan
  double luas = luasLingkaran(jari2);
  print("Luas lingkaran dengan jari-jari $jari2 = $luas");

  print(' ');
  print('================================================================');
  print(' ');

  int n = 5;
  int f = nilaiFaktorial(n);
  print("Faktorial dari $n adalah $f");

  print(' ');
}

void tugasPerulangan1() {
  int n = 8;

  for (int i = 0; i <= n; i++) {
    for (int j = 0; j <= n - i; j++) {
      stdout.write(" ");
      stdout.write(" ");
    }
    for (int k = 0; k <= i + (i - 2); k++) {
      stdout.write("*");
      stdout.write(" ");
    }
    print(' ');
  }
}

void tugasPerulangan2() {
  int n = 5;
  for (int i = 1; i <= n; i++) {
    for (int j = 1; j < i; j++) {
      stdout.write(" ");
    }
    for (int k = n; k >= (2 * i - n); k--) {
      stdout.write("0");
    }
    print(' ');
  }

  int m = 9;

  for (int i = 6; i <= m; i++) {
    for (int j = m; j > i; j--) {
      stdout.write(" ");
    }
    for (int k = 1; k <= (2 * i - m); k++) {
      stdout.write("0");
    }
    print(' ');
  }
}
