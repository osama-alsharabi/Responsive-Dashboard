String formatNumber(double number) {
  String value = number % 1 == 0
      ? number.toInt().toString()
      : number.toString();

  final parts = value.split('.');
  String integerPart = parts[0];

  String result = '';

  for (int i = 0; i < integerPart.length; i++) {
    int pos = integerPart.length - i;

    result += integerPart[i];

    if (pos > 1 && pos % 3 == 1) {
      result += ',';
    }
  }

  if (parts.length > 1) {
    result += '.${parts[1]}';
  }

  return result;
}
