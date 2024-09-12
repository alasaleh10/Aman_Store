import 'package:aman_store2/features/auth/data/repos/auth_repo.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../features/auth/data/auth_servises.dart';
import '../networking/dio_factory.dart';

final gitIt = GetIt.instance;

Future<void> setUpGetIt() async 
{
  // dio
   Dio dio = DioFactory.getDio();
  

  //  Auth
  gitIt.registerSingleton(AuthServices(dio));
  gitIt .registerFactory<AuthRepo> (()=>AuthRepo(gitIt()));
   

   
}
