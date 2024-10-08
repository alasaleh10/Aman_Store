
import 'package:flutter_bloc/flutter_bloc.dart';

import 'product_cart_state.dart';

class ProductCartCubit extends Cubit<ProductCartState> {
  ProductCartCubit() : super(const ProductCartState.initial());
}
