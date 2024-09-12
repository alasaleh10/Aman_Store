bool isNumeric(String otpCode) {
  final numericRegex = RegExp(r'^[0-9]+$');
  return numericRegex.hasMatch(otpCode);
}