import 'package:get/get.dart';
import 'package:mini_project_ids/core.dart';

part 'app_routes.dart';



class AppPages {
  static const INITIAL = AppRoutes.LIST_PICTURE;

  static final routes = [
    GetPage(
      name: AppRoutes.LIST_PICTURE, 
      page: () => ListPictureView(),
      binding: PictureBinding()
    ),
    GetPage(
      name: AppRoutes.DETAIL_PICTURE,
      page: () => DetailPictureView(),
      binding: PictureBinding()
    ),
  ];
}