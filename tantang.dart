void main() {
  challage();
}

void challage() {
  var buku = 10000;
  var pensil = 5000;
  var tas = 100000;

  var total = buku + pensil + tas;
  print(total);

  var diskon = total * 0.1;
  print(diskon);

  var harusBayar = total - diskon;
  print(harusBayar);
}
