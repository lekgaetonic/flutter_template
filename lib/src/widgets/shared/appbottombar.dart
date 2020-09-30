import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx/constants/theme.dart';
import 'package:flutter_getx/src/authen/controller.dart';
import 'package:flutter_getx/src/pages/account/page.dart';
import 'package:flutter_getx/src/pages/cart/page.dart';
import 'package:flutter_getx/src/pages/home/main.dart';
import 'package:flutter_getx/src/pages/login/main.dart';
import 'package:get/get.dart';

class SharedBottomBar extends StatelessWidget {
  final int currentIndex;
  SharedBottomBar(this.currentIndex, {Key key});
  final AuthenController _authenController = Get.put(AuthenController());
  @override
  Widget build(BuildContext context) {
    print(_authenController.gruntType.value);
    return BottomNavigationBar(
      currentIndex: currentIndex,
      // showUnselectedLabels: false,
      onTap: (int index) {
        // _navigateToScreens(index);
        // currentIndex = index;
        print(index);
        switch (index) {
          case 0:
            {
              Get.to(
                HomePage(),
              );
            }
            break;

          case 1:
            {
              Get.to(
                CartPage(),
              );
            }
            break;
          case 2:
            {
              Get.to(
                _authenController.gruntType.value == "password"
                    ? AccountPage()
                    : LoginPage(),
              );
            }
            break;

          default:
            {
              //statements;
            }
            break;
        }
      },
      backgroundColor: AppColor().secondary,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          activeIcon: Icon(EvaIcons.home),
          icon: Icon(EvaIcons.homeOutline),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          activeIcon: Icon(EvaIcons.shoppingCart),
          icon: Icon(EvaIcons.shoppingCartOutline),
          label: 'Cart',
        ),
        BottomNavigationBarItem(
          activeIcon: Icon(EvaIcons.person),
          icon: Icon(EvaIcons.personOutline),
          label: 'Account',
        ),
      ],
      // currentIndex: _selectedIndex,
      selectedItemColor: AppColor().primary,
      unselectedItemColor: Colors.grey,
      // onTap: _onItemTapped,
    );
  }
}
