
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodie/screen/cart.dart';
import 'package:foodie/screen/profile.dart';

import '../utils/colors.dart';
import 'dashboard.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {

  var isSelected = 0;
  List<Widget> fragments = [];

  @override
  void initState() {
    fragments = const [Dashboard(), Cart(), ProfileDetails()];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    Widget tabItem(int pos, String icon,String iconSelected) {
      return GestureDetector(
        onTap: () {
          setState(() {
            isSelected = pos;
          });
        },
        child: Container(
          width: 45,
          height: 45,
          alignment: Alignment.center,
          child: Image.asset(
            isSelected == pos ? iconSelected : icon,
            width: 25,
          ),
        ),
      );
    }

    return Scaffold(
      appBar: isSelected != 0 ? AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark,
        ),
        leading: const CupertinoNavigationBarBackButton(
          color: Colors.black,
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        title: Text(
          isSelected == 1 && isSelected != 0 ? 'Troli' : 'Profil Saya',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ) : null,
        body: fragments[isSelected],
      bottomNavigationBar: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          Container(
            // margin: const EdgeInsets.only(top: 10),
            height: 60,
            decoration: const BoxDecoration(
              color: appWhite,
              boxShadow: [
                BoxShadow(color: appTextColorSecondary, blurRadius: 5, spreadRadius: 1, offset: Offset(0, 3.0)),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  tabItem(0, "assets/icons/homelight.png", "assets/icons/home.png"),
                  tabItem(1, "assets/icons/cartlight.png", "assets/icons/cart.png"),
                  tabItem(2, "assets/icons/userlight.png", "assets/icons/user.png"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
