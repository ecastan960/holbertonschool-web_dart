List<double> convertToF(List<double> temperaturesInC) {
  var temps = temperaturesInC.map((temp) => double.parse(((temp * 9) / 5 + 32).toStringAsFixed(2)));
  return temps.toList();
}