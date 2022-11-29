void main(List<String> args) {
  var number = int.parse(args[0]);
  if (number == 0) {
    print('${number} is zero');
  } else {
    number > 0 ? print('${number} is positive') : print('${number} is negative');
  }
}