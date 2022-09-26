import 'package:demo_getx_call_api/model/album.dart';
import 'package:demo_getx_call_api/service/album_service.dart';
import 'package:get/get.dart';

class AlbumController extends GetxController {
  AlbumService albumService = AlbumService();
  RxList listAlbum = <Album>[].obs;
  @override
  void onInit() async {
    // TODO: implement onInit
    listAlbum.value = await albumService.getAlbums();
    super.onInit();
  }
}
