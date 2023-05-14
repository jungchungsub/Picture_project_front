import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:picture_project/constants.dart';
import 'package:picture_project/view/components/components.dart';
import 'package:picture_project/view/main/pages.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: buildBody(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      title: const Text(
        '이곳에 로고 삽입',
        style: TextStyle(color: Colors.black),
      ),
      actions: const [
        Icon(
          CupertinoIcons.bell,
          color: gMainColor,
          size: 30,
        ),
        SizedBox(width: 10),
      ],
    );
  }

  Widget buildBody() {
    return Column(
      children: [
        divider(),
        Flexible(
          child: Column(
            children: [
              buildPhotoList('스티커 사진관'),
              divider(),
              buildPhotoList('일반 사진관'),
            ],
          ),
        ),
      ],
    );
  }

  Expanded buildPhotoList(String text) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: const TextStyle(fontSize: 24, height: 1),
            ),
            const SizedBox(height: 15),
            Flexible(
              child: Container(
                color: gMainColor,
                child: Column(
                  children: [
                    Flexible(child: buildPhotoRow()),
                    const SizedBox(height: 15),
                    Flexible(child: buildPhotoRow()),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildPhotoRow() {
    return Row(
      children: [
        Flexible(child: photoStore()),
        const SizedBox(width: 20),
        Flexible(child: photoStore()),
        const SizedBox(width: 20),
        Flexible(child: photoStore()),
      ],
    );
  }

  Widget photoStore() {
    return InkWell(
      onTap: () {
        Get.to(StoreInfoPage());
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(color: gSecondColor, height: 72),
          Container(color: gThirdColor, child: const Text('가게 이름')),
        ],
      ),
    );
  }
}
