import 'cart_model.dart';

class GoPaymentModel {
  final bool? isDelivery;
  final bool? isFastingDelivery;
  final int? location;
  final CartModel cartModel;
  final List<Map<String,dynamic>> items;

  GoPaymentModel(
      {this.isDelivery,
      this.isFastingDelivery,
      this.location,
      required this.cartModel,
      required this.items
      });
}
