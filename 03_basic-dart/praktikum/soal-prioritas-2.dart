/*
Soalnya :

1.) Buat 3 buah variabel yang menampung tipe data String, 
lalu sambungkan 3 variabel tersebut dan tampilkan pada layar.

2.) Implementasikan rumus volume dari tabung (silinder) dengan menggunakan Bahasa Dart.
*/

import 'dart:io';
import 'dart:math';

void main() {
  soal1();
  soal2();
}

void soal1() {
  String namaAwal = "Muhammad";
  String namaTengah = "Taqi";
  String namaAkhir = "Syahid";

  print("Nama lengkapku $namaAwal $namaTengah $namaAkhir");
}

void soal2() {
  print(' ');
  print("=== Menghitung Volume Tabung ===");
  stdout.write("Masukan jari-jari tabung : ");
  String? jarijari = stdin.readLineSync();
  var hasilJarijari = int.parse(jarijari!);

  stdout.write("Masukan tinggi tabung : ");
  String? tinggi = stdin.readLineSync();
  var hasilTinggi = int.parse(tinggi!);

  var hasilVolumeTabung = pi * hasilJarijari * hasilJarijari * hasilTinggi;
  print("Hasil volume tabung : $hasilVolumeTabung cm");
}
