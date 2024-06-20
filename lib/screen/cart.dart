import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodie/screen/checkout.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/colors.dart';
import '../utils/next_screen.dart';
import '../utils/util.dart';
import '../widgets/global.dart';


class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {


  @override
  Widget build(BuildContext context) {
    final _screenWidth = MediaQuery.of(context).size.width;
    final _screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      // appBar: AppBar(
      //   systemOverlayStyle: const SystemUiOverlayStyle(
      //     statusBarColor: Colors.white,
      //     statusBarIconBrightness: Brightness.dark,
      //   ),
      //   leading: const CupertinoNavigationBarBackButton(
      //     color: Colors.black,
      //   ),
      //   elevation: 0,
      //   backgroundColor: Colors.white,
      //   iconTheme: const IconThemeData(
      //     color: Colors.black,
      //   ),
      //   title: const Text(
      //     'Troli',
      //     style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      //   ),
      // ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
                left: _screenWidth * 0.07, right: _screenWidth * 0.07),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: _screenHeight * 0.03,
                ),

                Stack(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: _screenWidth * 0.3,
                          child: ClipRRect(
                            // borderRadius: BorderRadius.circular(50),
                            child: Image.asset(
                                "assets/images/food1.png",
                                fit: BoxFit.cover),
                          ),
                        ),
                        SizedBox(
                          width: _screenWidth * 0.02,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Gado Gado',
                              style: GoogleFonts.poppins(
                                color: appBackgroundColorDark,
                                fontSize: _screenHeight * .025,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            Text(
                              'Bumbu Kacang',
                              style: GoogleFonts.poppins(
                                color: appTextColorPrimary,
                                fontSize: _screenHeight * .015,
                              ),
                            ),
                            SizedBox(
                              height: _screenHeight * 0.01,
                            ),
                            Text(
                              'Rp15.000',
                              style: GoogleFonts.poppins(
                                color: appColorPrimary,
                                fontSize: _screenHeight * .02,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Positioned(
                      top: 0,
                      right: 0,
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        icon: const Icon(Icons.close),
                        color: appColorPrimary,
                        iconSize: 15,
                        onPressed: () {},
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          CircleAvatar(
                            radius: 12,
                            child: IconButton(
                              padding: EdgeInsets.zero,
                              icon: const Icon(Icons.remove),
                              // color: Colors.white,
                              onPressed: () {},
                            ),
                          ),
                          SizedBox(
                            width: _screenWidth * 0.02,
                          ),
                          Text(
                            "02",
                            style: GoogleFonts.poppins(
                                color: appBackgroundColorDark,
                                fontSize: _screenHeight * .016,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(
                            width: _screenWidth * 0.02,
                          ),
                          CircleAvatar(
                            radius: 12,
                            child: IconButton(
                              padding: EdgeInsets.zero,
                              icon: const Icon(Icons.add),
                              color: Colors.white,
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                SizedBox(
                  height: _screenHeight * 0.05,
                ),
                Container(
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: appBackgroundColorDark,
                        blurStyle: BlurStyle.outer,
                        blurRadius: 10,
                        spreadRadius: 0,
                        offset: Offset(2,3),
                      ),
                    ],
                      color: appWhite,
                      borderRadius: BorderRadius.all(Radius.circular(30)),

                  ),
                  width: _screenWidth * 0.9,
                    child: Row(
                      children: [
                        SizedBox(
                          width: _screenWidth * 0.03,
                        ),
                        Image.asset(
                          "assets/icons/voucher.png",
                          width: 25,
                        ),
                        SizedBox(
                          width: _screenWidth * 0.02,
                        ),
                        Text(
                          "Voucher",
                          style: GoogleFonts.poppins(
                            color: appColorPrimary,
                            fontSize: _screenHeight * .02,
                          ),
                        ),
                        SizedBox(
                          width: _screenWidth * 0.06,
                        ),
                        SizedBox(
                          width: _screenWidth * 0.4,
                            child: TextFormField(
                              // controller: pinCont5,
                              textAlign: TextAlign.center,
                              style: TextStyle(color: appTextColorPrimary, fontSize: _screenHeight * .02, fontWeight: FontWeight.w800),
                              decoration: InputDecoration(
                                hintText: 'Masukkan Kode Voucher',
                                hintStyle: GoogleFonts.poppins(
                                    color: appTextColorPrimary.withOpacity(0.5), fontSize: _screenHeight * .015, ),
                                border: searchFieldUnderlineBorder,
                                focusColor: appWhite,
                                fillColor: appWhite,
                                enabledBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(color: appWhite),
                                ),
                                focusedBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(color: appWhite),
                                ),
                              ),
                              validator: (value) {
                                return null;
                              },
                            ),
                        ),
                      ],
                    ),
                ),
                SizedBox(
                  height: _screenHeight * 0.03,
                ),
                Container(
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: appBackgroundColorDark,
                        blurStyle: BlurStyle.outer,
                        blurRadius: 10,
                        spreadRadius: 0,
                        offset: Offset(2,3),
                      ),
                    ],
                    color: appWhite,
                    borderRadius: BorderRadius.all(Radius.circular(30)),

                  ),
                  width: _screenWidth * 0.9,
                  child: Row(
                    children: [
                      SizedBox(
                        width: _screenWidth * 0.03,
                      ),
                      Image.asset(
                        "assets/icons/notepad.png",
                        width: 25,
                      ),
                      SizedBox(
                        width: _screenWidth * 0.02,
                      ),
                      Text(
                        "Catatan",
                        style: GoogleFonts.poppins(
                          color: appColorPrimary,
                          fontSize: _screenHeight * .02,
                        ),
                      ),
                      SizedBox(
                        width: _screenWidth * 0.06,
                      ),
                      SizedBox(
                        width: _screenWidth * 0.4,
                        child: TextFormField(
                          // controller: pinCont5,
                          textAlign: TextAlign.center,
                          style: TextStyle(color: appTextColorPrimary, fontSize: _screenHeight * .02, fontWeight: FontWeight.w800),
                          decoration: InputDecoration(
                            hintText: 'Tinggalkan Pesan',
                            hintStyle: GoogleFonts.poppins(
                              color: appTextColorPrimary.withOpacity(0.5), fontSize: _screenHeight * .015, ),
                            border: searchFieldUnderlineBorder,
                            focusColor: appWhite,
                            fillColor: appWhite,
                            enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: appWhite),
                            ),
                            focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: appWhite),
                            ),
                          ),
                          validator: (value) {
                            return null;
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: _screenHeight * 0.07,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                  Text(
                    "Sub Total",
                    style: GoogleFonts.poppins(
                        fontSize: _screenHeight * .019,
                        color: const Color(0xff7A7C85)),
                  ),
                  Text(
                    "Rp       34.000",
                    style: GoogleFonts.poppins(
                        fontSize: _screenHeight * .019,
                        color: const Color(0xff333542)),
                  ),
                ]),
                SizedBox(
                  height: _screenHeight * 0.03,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                  Text(
                    "Biaya Pengantaran",
                    style: GoogleFonts.poppins(
                        fontSize: _screenHeight * .019,
                        color: const Color(0xff7A7C85)),
                  ),
                  Text(
                    "Rp       6.000",
                    style: GoogleFonts.poppins(
                        fontSize: _screenHeight * .019,
                        color: const Color(0xff333542)),
                  ),
                ]),
                SizedBox(
                  height: _screenHeight * 0.03,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                  Text(
                    "Total",
                    style: GoogleFonts.poppins(
                        fontSize: _screenHeight * .019,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xff7A7C85)),
                  ),
                  Text(
                    "Rp       40.000",
                    style: GoogleFonts.poppins(
                        fontSize: _screenHeight * .019,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xff333542)),
                  ),
                ]),
                SizedBox(
                  height: _screenHeight * 0.1,
                ),
                Center(
                  child: foodieRoundButton(
                    context, () => {nextScreen(context, const Checkout(),)},
                    "Checkout", width: _screenWidth * 0.55,
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}
