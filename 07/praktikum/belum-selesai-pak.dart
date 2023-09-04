class BangunRuang {
  var panjang;
  var lebar;
  var tinggi;

  void volume() {}
}

class Balok extends BangunRuang {
  var hasilVolume;

  @override
  var panjang = 10;

  @override
  var lebar = 20;

  @override
  var tinggi = 30;

  @override
  void volume() {
    hasilVolume = panjang * lebar * tinggi;
    print("Volume balok: $hasilVolume");
  }
}

class Kubus extends BangunRuang {
  var sisi = 10;
  var hasilVolume;

  @override
  void volume() {
    hasilVolume = sisi * sisi * sisi;
    print("Volume kubus: $hasilVolume");
  }
}

void main() {
  print(' ');
  var balok = Balok();
  balok.volume();

  var kubus = Kubus();
  kubus.volume();
  print(' ');
}
