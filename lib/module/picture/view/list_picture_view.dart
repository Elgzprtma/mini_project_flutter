import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mini_project_ids/core.dart';

class ListPictureView extends StatelessWidget {
  const ListPictureView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ListPictureController>();


    return Scaffold(
      appBar: AppBar(
        title: Text('List Picture'),
      ),
      body: Obx(() 
      {
         if (controller.isLoading.value) {
          return const LoadingWidget(message: "Retrieve Image data...");
        }

        return ListContentWidget(
          key: Key('list_picture_widget_${controller.pictures.hashCode}'), // Unique Key
          pictures: controller.pictures,
          onPictureTap: (picture) {
            Get.to(DetailPictureView(), arguments: picture);
          },
        );
      }),
    );
  }
}
