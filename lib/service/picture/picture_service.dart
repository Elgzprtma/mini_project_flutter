import 'package:dio/dio.dart';

class PictureService {
  final Dio dio = Dio();

  Future<List<dynamic>> fetchPictures() async {
    try {
      final response = await dio
          .get('https://picsum.photos/v2/list', queryParameters: {'limit': 10});
      return response.data;
    } catch (e) {
      throw Exception('Failed get picture: $e');
    }
  }

  Future<Map<String, dynamic>> fetchPictureDetail(String id) async {
    try {
      final response = await dio
            .get('https://picsum.photos/id/${id}/info');
      return response.data;
    } catch (e) {
      throw Exception('Failed get picture: $e');
    }
  }
}
