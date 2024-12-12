import 'package:get/get.dart';
import 'package:mini_project_ids/core.dart';

class ListPictureController extends GetxController {
  final PictureService service = PictureService();

  var pictures = <dynamic>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    fethPictures();
  }

  void fethPictures() async {
    try {
      isLoading(true);
      pictures.value = await service.fetchPictures();
    } finally {
      isLoading(false);
    }
  }
}
