import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/colors.dart';
import '../widgets/global.dart';


class ProfileDetails extends StatefulWidget {
  const ProfileDetails({super.key});

  @override
  State<ProfileDetails> createState() => _ProfileDetailsState();
}

class _ProfileDetailsState extends State<ProfileDetails> {


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
      //     'Profil Saya',
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
                  height: _screenHeight * 0.1,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: _screenWidth * 0.05, vertical: _screenHeight * 0.02),
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: appBackgroundColorDark,
                        blurStyle: BlurStyle.outer,
                        blurRadius: 5,
                        spreadRadius: 0,
                        offset: Offset(2,3),
                      ),
                    ],
                    color: appWhite,
                    borderRadius: BorderRadius.all(Radius.circular(30)),

                  ),
                  width: _screenWidth * 0.9,
                  height: _screenHeight * 0.18,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Nama",
                            style: GoogleFonts.poppins(
                              color: appBackgroundColorDark,
                              fontSize: _screenHeight * .022,
                            ),
                          ),
                          SizedBox(
                            width: _screenWidth * 0.05,
                          ),
                          Text(
                            " : Zaenuddin",
                            style: GoogleFonts.poppins(
                              color: appBackgroundColorDark,
                              fontSize: _screenHeight * .022,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Telepon",
                            style: GoogleFonts.poppins(
                              color: appBackgroundColorDark,
                              fontSize: _screenHeight * .022,
                            ),
                          ),
                          SizedBox(
                            width: _screenWidth * 0.05,
                          ),
                          Text(
                            " : 0863746238642864",
                            style: GoogleFonts.poppins(
                              color: appBackgroundColorDark,
                              fontSize: _screenHeight * .022,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Jenis",
                            style: GoogleFonts.poppins(
                              color: appBackgroundColorDark,
                              fontSize: _screenHeight * .022,
                            ),
                          ),
                          SizedBox(
                            width: _screenWidth * 0.05,
                          ),
                          Text(
                            " : Customer",
                            style: GoogleFonts.poppins(
                              color: appBackgroundColorDark,
                              fontSize: _screenHeight * .022,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: _screenHeight * 0.04,
                ),
                Center(
                  child: foodieRoundButton(
                    context, () => {},
                    "Ubah Password",
                  ),
                ),
                SizedBox(
                  height: _screenHeight * 0.04,
                ),
                Center(
                  child: foodieRoundButton(
                    context, () => {},
                    "Keluar",
                  ),
                ),

              ],
            ),
          ),
        ),
    );
  }
}
