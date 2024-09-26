import 'regular_exceptions.dart';

String removeSymbols(String value) {
  String val = value.trim();

  for (var i in RegularExceptions.disallowedSymbols) {
    if (val.endsWith(i) || val.startsWith(i)) {
      String newVal = val.replaceAll(i, '');
      return newVal.trim();
    }
    // else {
    //   if (val.endsWith(i) || val.startsWith(' ')) {
    //     String newVal = val.replaceAll(i, '');
    //     return newVal.trim();
    //   }
    // }
  }

  return val.trim();
}
