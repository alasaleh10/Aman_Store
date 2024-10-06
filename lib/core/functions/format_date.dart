import 'package:easy_localization/easy_localization.dart';

String formatedDate(String date) {
  return DateFormat('yyyy/MM/dd - h:mm a', 'en').format(DateTime.parse(date));
}
