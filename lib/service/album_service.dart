import 'package:demo_getx_call_api/model/album.dart';
import 'package:dio/dio.dart';

class AlbumService {
  var dio = Dio();
  final url = 'https://jsonplaceholder.typicode.com/photos';
  Future<List<Album>> getAlbums() async {
    final data = await dio.get(url);
    return List<Album>.from(data.data.map((e) => Album.fromJson(e)));
  }
}
