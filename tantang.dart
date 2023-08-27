void main() {
  challage();
}

void challage() {
  var buku = 1000;
  var pensil = 1000;
  var tas = 1000;

  var total = buku + pensil + tas;
  print(total);

  var diskon = total * 0.1;
  print(diskon);

  var harusBayar = total - diskon;
  print(harusBayar);
}

// var jumlah__bintang = 8;
// //2. gunakan for untuk membuat tingkat bintangnya
// //3. gunakan for untuk menambah  jumlah bintang dalam satu baris
// //4 coba mainkan bagian for kedua yang  tengah
// //5 masukkan for untuk spasi
// void main() {
//   for (var i = 0; i < jumlah__bintang; i++) {
//     for (var j = 0; j < i; j++) {
//       // print('*');
//       stdout.write("*");
//     }
//     print('');
//   }
// }