import 'package:flutter/material.dart';
import 'package:picture_project/customText.dart';

class profileUpdatePage extends StatelessWidget {
  const profileUpdatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1.0,
        title: const Text(
          '프로필 수정',
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
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 75,
                              width: 75,
                              child: InkWell(
                                onTap: () {},
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    image: DecorationImage(
                                        image:
                                            AssetImage("assets/KakaoTalk.png"),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Text('짱구',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold))
                        ],
                      ),
                      const CustomTextField(
                        fieldTitle: "닉네임",
                        hint: "닉네임을 입력해주세요",
                        lines: 1,
                      ),
                      const SizedBox(height: 15),
                      const CustomTextField(
                        fieldTitle: "아이디",
                        hint: "아이디를 입력해주세요",
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
                      Container(
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "주소",
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
                                hintText: "주소를 입력해주세요",
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
                                hintText: "상세주소를 입력해주세요",
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
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
