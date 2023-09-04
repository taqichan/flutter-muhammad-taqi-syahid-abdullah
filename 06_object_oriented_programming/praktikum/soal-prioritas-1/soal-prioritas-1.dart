class Hewan {
  var beratBadan = 20;

  void tampilBeratBadan() {
    print('Berat badan hewan: $beratBadan');
  }
}

class Mobil {
  int kapasitas = 100;
  List<int> muatan = [10, 40, 30];
  late int totalMuatan;

  void tambahMuatan() {
    muatan.add(10);
    totalMuatan = muatan.reduce((value, element) => value + element);

    if (totalMuatan < 100) {
      print('Muatan berhasil ditambahkan');
    } else {
      print('Muatan overload');
    }
  }
}

void main() {
  Hewan h = new Hewan();
  Mobil m = new Mobil();

  print(' ');
  h.tampilBeratBadan();
  m.tambahMuatan();
  print(' ');
}
