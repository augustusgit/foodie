import 'package:flutter/material.dart';

import '../utils/colors.dart';

class StaticProgress extends StatelessWidget {
   const StaticProgress( this.progressLine, {super.key});
  final int progressLine;

  @override
  Widget build(BuildContext context) {
    return getIndicatorProgress(context);
  }


  getIndicatorProgress(BuildContext context){
    final _screenHeight = MediaQuery.of(context).size.height;
    final _screenWidth = MediaQuery.of(context).size.width;
    switch(progressLine) {
      case 1:
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Image.asset(
                      "assets/icons/progressdark.png",
                      width: 50,
                    ),
                    Positioned(
                        left: 16,
                        right: 10,
                        top: 5,
                        child: Text("1", style: TextStyle(color: appWhite, fontSize: 24, fontWeight: FontWeight.bold),)),
                  ],
                ),
                SizedBox(
                  width: _screenWidth * 0.02,
                ),
                Image.asset(
                  "assets/icons/line.png",
                  width: 60,
                ),
                SizedBox(
                  width: _screenWidth * 0.02,
                ),
                Stack(
                  children: [
                    Image.asset(
                      "assets/icons/progresslight.png",
                      width: 50,
                    ),
                    Positioned(
                      left: 16,
                      right: 10,
                      top: 5,
                        child: Text("2", style: TextStyle(color: appBackgroundColorDark, fontSize: 24, fontWeight: FontWeight.bold),),
                    ),
                  ],
                ),
                SizedBox(
                  width: _screenWidth * 0.02,
                ),
                Image.asset(
                  "assets/icons/line.png",
                  width: 60,
                ),
                SizedBox(
                  width: _screenWidth * 0.02,
                ),
                Stack(
                  children: [
                    Image.asset(
                      "assets/icons/progresslight.png",
                      width: 50,
                    ),
                    Positioned(
                      left: 16,
                      right: 10,
                      top: 5,
                      child: Text("3", style: TextStyle(color: appBackgroundColorDark, fontSize: 24, fontWeight: FontWeight.bold),),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: _screenHeight * 0.02,
            ),
            getIndicatorTitle(context),
          ],
        );
      case 2:
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Image.asset(
                      "assets/icons/progressdark.png",
                      width: 50,
                    ),
                    Positioned(
                        left: 16,
                        right: 10,
                        top: 5,
                        child: Text("1", style: TextStyle(color: appWhite, fontSize: 24, fontWeight: FontWeight.bold),)),
                  ],
                ),
                SizedBox(
                  width: _screenWidth * 0.02,
                ),
                Image.asset(
                  "assets/icons/line.png",
                  width: 60,
                ),
                SizedBox(
                  width: _screenWidth * 0.02,
                ),
                Stack(
                  children: [
                    Image.asset(
                      "assets/icons/progressdark.png",
                      width: 50,
                    ),
                    const Positioned(
                      left: 16,
                      right: 10,
                      top: 5,
                      child: Text("2", style: TextStyle(color: appWhite, fontSize: 24, fontWeight: FontWeight.bold),),
                    ),
                  ],
                ),
                SizedBox(
                  width: _screenWidth * 0.02,
                ),
                Image.asset(
                  "assets/icons/line.png",
                  width: 60,
                ),
                SizedBox(
                  width: _screenWidth * 0.02,
                ),
                Stack(
                  children: [
                    Image.asset(
                      "assets/icons/progresslight.png",
                      width: 50,
                    ),
                    Positioned(
                      left: 16,
                      right: 10,
                      top: 5,
                      child: Text("3", style: TextStyle(color: appBackgroundColorDark, fontSize: 24, fontWeight: FontWeight.bold),),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: _screenHeight * 0.02,
            ),
            getIndicatorTitle(context),
          ],
        );
      case 3:
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Image.asset(
                      "assets/icons/progressdark.png",
                      width: 50,
                    ),
                    Positioned(
                        left: 16,
                        right: 10,
                        top: 5,
                        child: Text("1", style: TextStyle(color: appWhite, fontSize: 24, fontWeight: FontWeight.bold),)),
                  ],
                ),
                SizedBox(
                  width: _screenWidth * 0.02,
                ),
                Image.asset(
                  "assets/icons/line.png",
                  width: 60,
                ),
                SizedBox(
                  width: _screenWidth * 0.02,
                ),
                Stack(
                  children: [
                    Image.asset(
                      "assets/icons/progressdark.png",
                      width: 50,
                    ),
                    const Positioned(
                      left: 16,
                      right: 10,
                      top: 5,
                      child: Text("2", style: TextStyle(color: appWhite, fontSize: 24, fontWeight: FontWeight.bold),),
                    ),
                  ],
                ),
                SizedBox(
                  width: _screenWidth * 0.02,
                ),
                Image.asset(
                  "assets/icons/line.png",
                  width: 60,
                ),
                SizedBox(
                  width: _screenWidth * 0.02,
                ),
                Stack(
                  children: [
                    Image.asset(
                      "assets/icons/progressdark.png",
                      width: 50,
                    ),
                    const Positioned(
                      left: 16,
                      right: 10,
                      top: 5,
                      child: Text("3", style: TextStyle(color: appWhite, fontSize: 24, fontWeight: FontWeight.bold),),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: _screenHeight * 0.02,
            ),
            getIndicatorTitle(context),
          ],
        );
    }


  }

  Widget getIndicatorTitle(BuildContext context){
    final _screenHeight = MediaQuery.of(context).size.height;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Verifikasi No. Hp",
          style: TextStyle(
              fontWeight: FontWeight.w400, fontSize: 14, color: appColorPrimary),
        ),
        SizedBox(
          width: _screenHeight * 0.025,
        ),
        const Text(
          "Buat Password",
          style: TextStyle(
              fontWeight: FontWeight.w400, fontSize: 14, color: appColorPrimary),
        ),
        SizedBox(
          width: _screenHeight * 0.03,
        ),
        const Text(
          "Selesai",
          style: TextStyle(
              fontWeight: FontWeight.w400, fontSize: 14, color: appColorPrimary),
        ),
      ],
    );
  }
}
