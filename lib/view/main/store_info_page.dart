import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:picture_project/constants.dart';
import 'package:picture_project/size.dart';
import 'pages.dart';

class StoreInfoPage extends StatelessWidget {
  const StoreInfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        width: getScreenWidth(context),
        height: getScreenHeight(context),
        child: CustomScrollView(
          scrollDirection: Axis.vertical,
          slivers: [
            buildSliverAppbar(),
            buildStoreDetail(),
            buildStoreReview(),
            buildButton(),
          ],
        ),
      ),
    );
  }

  Widget buildSliverAppbar() {
    return SliverAppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      pinned: false,
      expandedHeight: 200,
      flexibleSpace: FlexibleSpaceBar(
        background: Image.asset(
          'assets/사진관.jpg',
          fit: BoxFit.cover,
        ),
      ),
      actions: [
        InkWell(
          onTap: () {
            Get.to(const HomePage());
          },
          child: const Padding(
            padding: EdgeInsets.all(25),
            child: Icon(CupertinoIcons.home),
          ),
        )
      ],
    );
  }

  Widget buildStoreDetail() {
    return SliverPadding(
      padding: const EdgeInsets.all(25),
      sliver: SliverList(
        delegate: SliverChildListDelegate(
          // List<Widget>
          [
            const Text('행복사진관', style: TextStyle(fontSize: 24)),
            const SizedBox(height: 30),
            const Text('영업시간', style: TextStyle(fontSize: 24)),
            const SizedBox(height: 10),
            const Text('10 : 00 ~ 20 : 00', style: TextStyle(fontSize: 16)),
            const SizedBox(height: 30),
            const Text('매장 정보', style: TextStyle(fontSize: 24)),
            const SizedBox(height: 10),
            buildStoreIntro(),
            const SizedBox(height: 30),
            const Text('가격 정보', style: TextStyle(fontSize: 24)),
            const SizedBox(height: 10),
            buildPrice(),
          ],
        ),
      ),
    );
  }

  Widget buildPrice() {
    return Container(
      padding: const EdgeInsets.all(25),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: gSecondColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('증명사진', style: TextStyle(fontSize: 18)),
              const Text('20,000 원 (List.generate)', style: TextStyle(fontSize: 18)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('여권사진', style: TextStyle(fontSize: 18)),
              const Text('30,000 원', style: TextStyle(fontSize: 18)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('취업사진', style: TextStyle(fontSize: 18)),
              const Text('50,000 원', style: TextStyle(fontSize: 18)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('프로필사진', style: TextStyle(fontSize: 18)),
              const Text('100,000 원', style: TextStyle(fontSize: 18)),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildStoreIntro() {
    return const Text(
      '우리 사진관은 어쩌고 저쩌고...',
      style: TextStyle(fontSize: 16),
    );
  }

  buildStoreReview() {
    return SliverList(
      delegate: SliverChildListDelegate(
        // List<Widget>
        [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: const Text('예약 고객 리뷰', style: TextStyle(fontSize: 24)),
          ),
          const SizedBox(height: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Divider(
                height: 1,
                thickness: 1,
                color: gDividerColor,
              ),
              Padding(
                padding: const EdgeInsets.all(25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text(
                      '정충섭',
                      style: TextStyle(fontSize: 18),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      '이집 잘하네 (List.generate)',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
            ],
          ), // 여기까지 list 한개
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Divider(
                height: 1,
                thickness: 1,
                color: gDividerColor,
              ),
              Padding(
                padding: const EdgeInsets.all(25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text(
                      '정충섭',
                      style: TextStyle(fontSize: 18),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      '이집 잘하네 (List.generate)',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
            ],
          ), // 여기까지 list 한개
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Divider(
                height: 1,
                thickness: 1,
                color: gDividerColor,
              ),
              Padding(
                padding: const EdgeInsets.all(25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text(
                      '정충섭',
                      style: TextStyle(fontSize: 18),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      '이집 잘하네 (List.generate)',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
            ],
          ), // 여기까지 list 한개
        ],
      ),
    );
  }

  buildButton() {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                flex: 4,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: gMainColor,
                  ),
                  child: Center(
                    child: Text(
                      '예약하기',
                      style: TextStyle(color: Colors.white, fontSize: 26),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 25),
              Flexible(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(width: 2),
                  ),
                  child: Center(child: Icon(CupertinoIcons.heart, size: 33)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
