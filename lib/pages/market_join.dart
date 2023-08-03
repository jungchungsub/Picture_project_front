import 'package:flutter/material.dart';
import 'package:picture_project/customText.dart';

class MarketJoinPage extends StatelessWidget {
  const MarketJoinPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 1.0,
          title: const Text(
            '매장 회원가입',
            style: TextStyle(color: Colors.black, fontSize: 24),
          ),
          centerTitle: true,
          actions: const [
            IconButton(
              onPressed: null,
              icon: Icon(Icons.notifications_none),
              iconSize: 20,
              color: Color(0xffB275E8),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CustomTextField(
                          fieldTitle: "아이디",
                          hint: "이메일 형태로 입력해주세요",
                          lines: 1,
                        ),
                        const SizedBox(height: 15),
                        Container(
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "비밀번호",
                                        style: TextStyle(fontSize: 18),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              TextFormField(
                                maxLines: 1,
                                decoration: InputDecoration(
                                  hintText: "비밀번호를 입력해주세요",
                                  hintStyle: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                  ),
                                  //3. 기본 textFormfield 디자인 - enabledBorder
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color(0xffDABFF5), width: 3.0),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  //마우스 올리고 난 후 스타일
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color(0xffDABFF5), width: 3.0),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              TextFormField(
                                maxLines: 1,
                                decoration: InputDecoration(
                                  hintText: "비밀번호를 한번더 입력해주세요",
                                  hintStyle: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                  ),
                                  //3. 기본 textFormfield 디자인 - enabledBorder
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color(0xffDABFF5), width: 3.0),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  //마우스 올리고 난 후 스타일
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color(0xffDABFF5), width: 3.0),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 15),
                        const CustomTextField(
                          fieldTitle: "전화번호",
                          hint: "전화번호를 입력해주세요",
                          lines: 1,
                        ),
                        const SizedBox(height: 15),
                        const CustomTextField(
                          fieldTitle: "사업자명",
                          hint: "사업자명을 입력해주세요",
                          lines: 1,
                        ),
                        const SizedBox(height: 15),
                        const CustomTextField(
                          fieldTitle: "사업자번호",
                          hint: "사업자번호를 입력해주세요",
                          lines: 1,
                        ),
                        const SizedBox(height: 15),
                        Container(
                          height: 58,
                          width: double.maxFinite,
                          child: ElevatedButton(
                            child: const Text(
                              '회원가입 완료',
                              style: TextStyle(fontSize: 26),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: const Color(0xffB275E8),
                            ),
                            onPressed: () {},
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
