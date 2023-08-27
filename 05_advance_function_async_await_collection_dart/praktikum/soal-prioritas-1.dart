Future<void> pengalianListAsync(List<int> dataList, int factor) async {
  await Future.forEach(dataList, (int number) async {
    await Future.delayed(Duration(milliseconds: 100));
    print("Proses async: $number");
    dataList[dataList.indexOf(number)] = number * factor;
  });
}

void main() async {
  List<int> numbers = [2, 4, 6, 8, 10];
  int multiplier = 3;

  print("List awal: $numbers");
  await pengalianListAsync(numbers, multiplier);
  print("List setelah dikali: $numbers");
}
