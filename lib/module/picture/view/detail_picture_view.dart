
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mini_project_ids/core.dart';

class DetailPictureView extends StatelessWidget {
  // const DetailPictureView({super.key});

  @override
  Widget build(BuildContext context) {
    final picture = Get.arguments as Map<String, dynamic>;

    return Scaffold(
      appBar: AppBar(
        title: Text('Detail picture'),
      ),
      body: DetailContentWidget(
        picture: picture,
      ),
    );
  }
}
