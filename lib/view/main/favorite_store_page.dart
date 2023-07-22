import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:picture_project/constants.dart';
import 'package:picture_project/view/components/components.dart';

class FavoriteStorePage extends StatelessWidget {
  const FavoriteStorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar('관심 사진관'),
      body: buildBody(),
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
                const Flexible(
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text('이름 : 하루필름', style: TextStyle(fontSize: 16)),
                          Text('위치 : 부산광역시 해운대구\n해운대로 620',
                              style: TextStyle(fontSize: 16)),
                        ],
                      ),
                      Positioned(
                        bottom: -10,
                        right: 0,
                        child: Icon(
                          CupertinoIcons.heart_fill,
                          color: Colors.red,
                        ),
                      )
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

  Widget buildBody() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        divider(),
        const SizedBox(height: 20),
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
        ),
      ],
    );
  }
}
