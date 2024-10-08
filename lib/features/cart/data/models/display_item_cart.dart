class DisplayItemCart {
  final int? id;
  final String? name;
  final String? subName;
  final String? image;
  final int? price;
  final int? quantity;
  final int? discount;
  final int? priceAfterDiscount;

  DisplayItemCart(this.id, this.name, this.subName, this.image, this.price,
      this.quantity, this.discount, this.priceAfterDiscount);
}
