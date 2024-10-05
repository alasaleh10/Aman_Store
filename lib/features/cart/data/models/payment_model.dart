import 'package:aman_store2/core/utils/app_assets.dart';

class PaymentModel {
  final int type;
  final String title;
  final String image;

  PaymentModel({
    required this.type,
    required this.title,
    required this.image,
  });
}

List<PaymentModel> paymentMthods = [
  PaymentModel(type: 1, title: 'الدفع عند الإستلام', image: Assets.imagesCash),
  PaymentModel(type: 2, title: 'الدفع عبر محفظتي', image: Assets.imagesWallet),
  // PaymentModel(type: 3, title: 'العمقى للصرافة', image: Assets.imagesOmqy),
];
