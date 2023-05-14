import 'package:flutter/material.dart';
import 'package:picture_project/constants.dart';
import 'package:picture_project/view/components/components.dart';

class MyNearPhotoPage extends StatelessWidget {
  const MyNearPhotoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar('내 근처 사진관'),
      body: buildBody(),
    );
  }

  Widget buildBody() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        divider(),
        const SizedBox(height: 20),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            '현재위치 : 부산시 해운대구',
            style: TextStyle(fontSize: 20),
          ),
        ),
        Flexible(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  buildPhotoStore(),
                  buildPhotoStore(),
                  buildPhotoStore(),
                  buildPhotoStore(),
                  buildPhotoStore(),
                  buildPhotoStore(),
                  buildPhotoStore(),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget buildPhotoStore() {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: gMainColor),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 18),
            child: Row(
              children: [
                Container(
                  width: 80,
                  height: 72,
                  color: gSecondColor,
                ),
                const SizedBox(width: 18),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: const [
                      Text('이름 : 하루필름'),
                      Text('위치 : 부산광역시 해운대구\n해운대로 620'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
