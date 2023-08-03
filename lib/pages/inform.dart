import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class informPage extends StatelessWidget {
  const informPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1.0,
        title: const Text(
          '내정보',
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 75,
                      width: 75,
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            image: DecorationImage(
                                image: AssetImage("assets/KakaoTalk.png"),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Text('짱구',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold))
                  ],
                ),
                Text(
                  '프로필 수정',
                  style: TextStyle(fontSize: 20, color: Color(0xffBFBFBF)),
                )
              ],
            ),
            const SizedBox(height: 50),
            const Text(
              '관심 사진관',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15),
            const Text(
              '작성한 리뷰',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15),
            const Text(
              '예약 내역',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15),
            const Text(
              '현재 진행중인 이벤트',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 130),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '고객센터',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffACACAC)),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    '공지사항',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    '문의하기',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    '도움말',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: 3,
        items: [
          BottomNavigationBarItem(
            label: "홈",
            icon: Icon(CupertinoIcons.home),
          ),
          BottomNavigationBarItem(
              label: "검색", icon: Icon(CupertinoIcons.search)),
          BottomNavigationBarItem(
              label: "찜", icon: Icon(CupertinoIcons.calendar)),
          BottomNavigationBarItem(
              label: "채팅", icon: Icon(CupertinoIcons.person)),
        ],
      ),
    );
  }
}
