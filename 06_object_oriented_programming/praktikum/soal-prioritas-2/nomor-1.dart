import 'dart:io';

class Calculator {
  late double angkaPertama, angkaKedua;

  void penjumlahan() {
    print(' ');
    print("==== PENJUMLAHAN ===="); // Judulnya
    print(' ');

    stdout.write("Masukan angka pertama: ");
    String? nilai1 = stdin.readLineSync();
    angkaPertama = double.parse(nilai1!);

    stdout.write("Masukan angka kedua: ");
    String? nilai2 = stdin.readLineSync();
    angkaKedua = double.parse(nilai2!);

    double hasilPenjumlahan = angkaPertama + angkaKedua;
    print("Hasil Penjumlahan: $hasilPenjumlahan");
  }

  void pengurangan() {
    print(' ');
    print("==== PENGURANGAN ===="); // Judulnya
    print(' ');

    stdout.write("Masukan angka pertama: ");
    String? nilai1 = stdin.readLineSync();
    angkaPertama = double.parse(nilai1!);

    stdout.write("Masukan angka kedua: ");
    String? nilai2 = stdin.readLineSync();
    angkaKedua = double.parse(nilai2!);

    double hasilPengurangan = angkaPertama - angkaKedua;
    print("Hasil Pengurangan: $hasilPengurangan");
  }

  void perkalian() {
    print(' ');
    print("==== PERKALIAN ===="); // Judulnya
    print(' ');

    stdout.write("Masukan angka pertama: ");
    String? nilai1 = stdin.readLineSync();
    angkaPertama = double.parse(nilai1!);

    stdout.write("Masukan angka kedua: ");
    String? nilai2 = stdin.readLineSync();
    angkaKedua = double.parse(nilai2!);

    double hasilPerkalian = angkaPertama * angkaKedua;
    print("Hasil Perkalian: $hasilPerkalian");
  }

  void pembagian() {
    print(' ');
    print("==== PEMBAGIAN ===="); // Judulnya
    print(' ');

    stdout.write("Masukan angka pertama: ");
    String? nilai1 = stdin.readLineSync();
    angkaPertama = double.parse(nilai1!);

    stdout.write("Masukan angka kedua: ");
    String? nilai2 = stdin.readLineSync();
    angkaKedua = double.parse(nilai2!);

    double hasilPembagian = angkaPertama / angkaKedua;
    print("Hasil Pembagian: $hasilPembagian");
  }
}

void main() {
  Calculator c = new Calculator();
  var pilihan;

  print(' ');
  print("==== PETUNJUK PENGGUNAAN KALKULATOR ====");
  print(' ');
  print("Ketik 1 untuk penjumlahan");
  print("Ketik 2 untuk pengurangan");
  print("Ketik 3 untuk perkalian");
  print("Ketik 4 untuk pembagian");
  print(' ');
  stdout.write("Ketik pilihan anda: ");
  pilihan = stdin.readLineSync();
  int hasilPilihan = int.parse(pilihan!);

  if (hasilPilihan == 1) {
    c.penjumlahan();
  } else if (hasilPilihan == 2) {
    c.pengurangan();
  } else if (hasilPilihan == 3) {
    c.perkalian();
  } else if (hasilPilihan == 4) {
    c.pembagian();
  } else {
    print("Pilihan yang anda masukan salah!");
  }

  print(' ');
}
