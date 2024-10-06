import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../core/networking/api_constanses.dart';
import 'models/orders_model.dart';
part 'orders_serviess.g.dart';
@RestApi(baseUrl: ApiConstanses.baseUrl)
abstract class OrdersServices 
{
factory OrdersServices(Dio dio, {String baseUrl}) = _OrdersServices;
@GET(ApiConstanses.myPreviousOrders)
Future<OrdersModel> getMyPreviousOrders();
@GET(ApiConstanses.myCurrentOrders)
Future<OrdersModel> getMyCurrentOrderss();

}