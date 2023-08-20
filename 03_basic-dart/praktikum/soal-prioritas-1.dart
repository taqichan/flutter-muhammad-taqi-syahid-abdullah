// rumus keliling persegi panjang = 2 (P * L)
// rumus luas persegi panjang = P * L

import 'dart:io';

void main() {
  kelilingPersegiPanjang();
  luasPersegiPanjang();
}

void kelilingPersegiPanjang() {
  print("=== Menghitung Keliling Persegi Panjang ===");
  stdout.write("Masukan sisi persegi panjang : ");
  String? panjang = stdin.readLineSync();
  var hasilPanjang = int.parse(panjang!);

  stdout.write("Masukan lebar persegi panjang : ");
  String? lebar = stdin.readLineSync();
  var hasilLebar = int.parse(lebar!);

  var kelilingPersegiPanjang = 2 * (hasilPanjang * hasilLebar);

  print("Hasil keliling persegi panjang : $kelilingPersegiPanjang cm");
}

void luasPersegiPanjang() {
  print(' ');
  print("=== Menghitung Luas Persegi Panjang ===");
  stdout.write("Masukan sisi persegi panjang : ");
  String? panjang = stdin.readLineSync();
  var hasilPanjang = int.parse(panjang!);

  stdout.write("Masukan lebar persegi panjang : ");
  String? lebar = stdin.readLineSync();
  var hasilLebar = int.parse(lebar!);

  var luasPersegiPanjang = hasilPanjang * hasilLebar;

  print("Hasil luas persegi panjang : $luasPersegiPanjang cm");
}
