import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:insta/src/pages/search.dart';
import 'components/image_data.dart';
import 'controller/bottom_nav_controller.dart';
import 'pages/home.dart';

class App extends GetView<BottomNavController> {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Obx(
        () => Scaffold(
          body: IndexedStack(index: controller.pageIndex.value, children: [
            const Home(),
            const Search(),
            Container(
              child: const Center(child: Text('Upload')),
            ),
            Container(
              child: const Center(child: Text('Activity')),
            ),
            Container(
              child: const Center(child: Text('MyPage')),
            ),
          ]),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed, // 하단바 고정
            showSelectedLabels: false, // label 표기 없앰
            showUnselectedLabels: false,
            currentIndex: controller.pageIndex.value, // 활성화된 아이콘
            elevation: 0, // 하단 바 선 사라지게함
            onTap: controller.changeBottomNav,
            items: [
              BottomNavigationBarItem(
                icon: ImageData(IconsPath.homeOff),
                activeIcon: ImageData(IconsPath.homeOn),
                label: "home",
              ),
              BottomNavigationBarItem(
                icon: ImageData(IconsPath.searchOff),
                activeIcon: ImageData(IconsPath.searchOn),
                label: "home",
              ),
              BottomNavigationBarItem(
                icon: ImageData(IconsPath.uploadIcon),
                label: "home",
              ),
              BottomNavigationBarItem(
                icon: ImageData(IconsPath.activeOff),
                activeIcon: ImageData(IconsPath.activeOn),
                label: "home",
              ),
              BottomNavigationBarItem(
                icon: Container(
                    width: 30,
                    height: 30,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey,
                    )),
                label: "home",
              ),
            ],
          ),
        ),
      ),
      onWillPop: () async {
        // 뒤로가기 버튼을 눌렀을 경우
        return false;
      },
    );
  }
}
