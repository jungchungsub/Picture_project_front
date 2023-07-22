import 'package:flutter/material.dart';
import 'package:picture_project/constants.dart';
import 'package:picture_project/view/components/components.dart';

class ReservationPage extends StatelessWidget {
  const ReservationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar('예약 내역'),
      body: buildBody(),
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
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: const [
                          Text('이름 : 하루필름', style: TextStyle(fontSize: 16)),
                          Text('위치 : 부산광역시 해운대구\n해운대로 620', style: TextStyle(fontSize: 16)),
                          Text('시간 : 18:00', style: TextStyle(fontSize: 16)),
                        ],
                      ),
                      Positioned(
                        bottom: -10,
                        right: 0,
                        child: Container(
                          decoration: BoxDecoration(color: gMainColor, borderRadius: BorderRadius.circular(8)),
                          child: const Padding(
                            padding: EdgeInsets.all(6),
                            child: Text('예약 취소', style: TextStyle(fontSize: 16, color: Colors.white)),
                          ),
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
}
