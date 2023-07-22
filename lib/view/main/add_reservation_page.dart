import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:picture_project/constants.dart';
import 'package:picture_project/view/components/components.dart';
import 'package:picture_project/view/main/pages.dart';

class AddReservationPage extends StatefulWidget {
  const AddReservationPage({super.key});

  @override
  State<AddReservationPage> createState() => _AddReservationPageState();
}

class _AddReservationPageState extends State<AddReservationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar('예약시간'),
      body: buildBody(),
    );
  }

  Widget buildBody() {
    return Column(
      children: [
        divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('날짜 선택'),
                    Row(
                      children: const [
                        Icon(Icons.edit_calendar_outlined),
                        Text('2.3 금요일'),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('인원수'),
                    Text('3명'),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              divider(),
              buildTimeSelect(),
              const SizedBox(height: 30),
              buildBottomButton(),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildTimeSelect() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: const [
          SizedBox(height: 40),
          Text('시간 선택'),
          SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget buildBottomButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: InkWell(
        onTap: () {
          Get.to(() => const HomePage());
        },
        child: Container(
          height: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5), color: gButtonColor),
          alignment: Alignment.center,
          child: const Text(
            '예약 완료',
            style: TextStyle(
              color: Colors.white,
              height: 1,
              fontSize: 26,
            ),
          ),
        ),
      ),
    );
  }
}
