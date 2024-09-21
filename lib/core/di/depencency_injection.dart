import 'package:aman_store2/features/auth/data/repos/auth_repo.dart';
import 'package:aman_store2/features/categoriess/data/categoriee_serveices.dart';
import 'package:aman_store2/features/categoriess/data/repo/categoriess_repo.dart';
import 'package:aman_store2/features/favorite/data/favorite_repo.dart';
import 'package:aman_store2/features/favorite/data/favorite_services.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../features/auth/data/auth_servises.dart';
import '../../features/location/data/location_services.dart';
import '../../features/location/data/repo/location_repo.dart';
import '../networking/dio_factory.dart';

final gitIt = GetIt.instance;

Future<void> setUpGetIt() async 
{
  // dio
   Dio dio =await DioFactory.getDio();
  

  //  Auth
  gitIt.registerSingleton(AuthServices(dio));
  gitIt .registerFactory<AuthRepo> (()=>AuthRepo(gitIt()));

  // location
  gitIt.registerSingleton(LocationServices(dio));
  gitIt .registerFactory<LocationRepo> (()=>LocationRepo(gitIt()));



  // categoriess
  gitIt.registerSingleton(CategorieeServices(dio));
  gitIt .registerFactory<CategoriessRepo> (()=>CategoriessRepo(gitIt()));

  // Favorite
  gitIt.registerSingleton(FavoriteServises(dio));
  gitIt.registerFactory<FavoriteRepo>(() => FavoriteRepo(gitIt()));

   

   
}
