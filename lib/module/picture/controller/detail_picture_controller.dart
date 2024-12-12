import 'package:get/get.dart';
import 'package:mini_project_ids/core.dart';

class DetailPictureController extends GetxController{
  final PictureService service = PictureService();

  var pictureDetail = {}.obs;
  var isLoading = true.obs;

  @override
  void onInit() async{
    super.onInit();
    await fetchPictureDetail(Get.arguments['id']); 
  }

  Future<void> fetchPictureDetail(String id) async {
    try{
      isLoading(true);
      pictureDetail.value = await service.fetchPictureDetail(id);
    }finally{
      isLoading(false);
    }
  }
}