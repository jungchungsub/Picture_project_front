import 'package:flutter/material.dart';

class loginDivisionPage extends StatelessWidget {
  const loginDivisionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Positioned(
            top: 150,
            left: 30,
            child: Container(
              width: 326,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      '아이디',
                      style: TextStyle(fontSize: 18),
                    ),
                    const SizedBox(height: 15),
                    TextFormField(
                      maxLines: 1,
                      decoration: InputDecoration(
                        hintText: "아이디를 입력해주세요",
                        hintStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                        //3. 기본 textFormfield 디자인 - enabledBorder
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xffDABFF5), width: 3.0),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        //마우스 올리고 난 후 스타일
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xffDABFF5), width: 3.0),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      '비밀번호',
                      style: TextStyle(fontSize: 18),
                    ),
                    const SizedBox(height: 15),
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
                          borderSide:
                              BorderSide(color: Color(0xffDABFF5), width: 3.0),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        //마우스 올리고 난 후 스타일
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xffDABFF5), width: 3.0),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    const SizedBox(height: 25),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage("assets/kakaologin.png"),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    const SizedBox(height: 25),
                    Container(
                      height: 46,
                      width: double.maxFinite,
                      child: ElevatedButton(
                        child: const Text(
                          '로그인',
                          style: TextStyle(fontSize: 18),
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
            ),
          ),
        ],
      )),
    );
  }
}
