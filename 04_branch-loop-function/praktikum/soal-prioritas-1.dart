import 'dart:io';

void main() {
  tugasPercabangan();
  tugasPerulangan();
}

void tugasPercabangan() {
  stdout.write("Masukan nilai: ");
  String? nilai = stdin.readLineSync();
  var hasilNilai = int.parse(nilai!);

  if (hasilNilai > 70) {
    print("Nilai A");
  } else if (hasilNilai > 40) {
    print("Nilai B");
  } else if (hasilNilai > 0) {
    print("Nilai C");
  } else {
    print("Nilai Kosong");
  }
}

void tugasPerulangan() {
  int i = 1;
  while (i <= 10) {
    print(i);
    i++;
  }
}
