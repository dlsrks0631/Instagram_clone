import 'package:flutter/material.dart';
import 'package:insta/src/components/avatar_widget.dart';

class ActiveHistory extends StatelessWidget {
  const ActiveHistory({super.key});

  Widget _activeitemOne() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3.3),
      child: Row(
        children: [
          AvatarWidget(
              type: AvatarType.TYPE2,
              size: 45,
              thumbPath:
                  "https://post-phinf.pstatic.net/MjAxODAzMjdfMjQ4/MDAxNTIyMTM5NzQxNzM2.7Jq1Tj07vH8pMHVNVxNEAjs2Es8xCfiubHiPngOhVk0g.JY3AL2A17qLDUGXeW0zElDmJOdJZaLPB4Qr-elSFTjgg.JPEG/%EC%95%84%EA%B8%B0%EC%9B%83%EC%9D%8C.jpg?type=w800_q75"),
          const SizedBox(width: 10),
          const Expanded(
            child: Text.rich(
              TextSpan(
                text: '김제현',
                style: TextStyle(fontWeight: FontWeight.bold),
                children: [
                  TextSpan(
                    text: ' 님이 회원님의 게시물을 좋아합니다. ',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  TextSpan(
                    text: ' 5일 전',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 13,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _activeView(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(height: 13),
          _activeitemOne(),
          _activeitemOne(),
          _activeitemOne(),
          _activeitemOne(),
        ],
      ),
    );
  }

  // Widget _thisweekView() {
  //   return Padding(
  //     padding: const EdgeInsets.symmetric(horizontal: 15.0),
  //     child: Column(
  //       crossAxisAlignment: CrossAxisAlignment.stretch,
  //       children: [
  //         const Text(
  //           '이번주',
  //           style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
  //         ),
  //         const SizedBox(height: 13),
  //         _activeitemOne(),
  //         _activeitemOne(),
  //         _activeitemOne(),
  //         _activeitemOne(),
  //       ],
  //     ),
  //   );
  // }

  // Widget _thismonthView() {
  //   return Padding(
  //     padding: const EdgeInsets.symmetric(horizontal: 15.0),
  //     child: Column(
  //       crossAxisAlignment: CrossAxisAlignment.stretch,
  //       children: [
  //         const Text(
  //           '이번달',
  //           style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
  //         ),
  //         const SizedBox(height: 13),
  //         _activeitemOne(),
  //         _activeitemOne(),
  //         _activeitemOne(),
  //         _activeitemOne(),
  //       ],
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          "Activity",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _activeView('오늘'),
            const SizedBox(height: 10),
            _activeView('이번주'),
            const SizedBox(height: 10),
            _activeView('이번달'),
          ],
        ),
      ),
    );
  }
}
