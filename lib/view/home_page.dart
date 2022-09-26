import 'package:demo_getx_call_api/controller/album_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class Homepage extends StatelessWidget {
  AlbumController albumController = Get.put(AlbumController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: ListView.builder(
          itemCount: albumController.listAlbum.length,
          itemBuilder: (context, index) {
            return Container(
                // child: Text(albumController.listAlbum[index].url.toString()),
                child: Column(
              children: [
                Text(albumController.listAlbum[index].title.toString()),
                Image.network(albumController.listAlbum[index].url.toString()),
                Image.network(
                    albumController.listAlbum[index].thumbnailUrl.toString()),
              ],
            ));
          },
        ),
      ),
    );
  }
}
