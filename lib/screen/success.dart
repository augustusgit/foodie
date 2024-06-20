import 'package:flutter/material.dart';
import 'package:foodie/screen/sign_in.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/colors.dart';
import '../utils/next_screen.dart';

class SuccessScreen extends StatefulWidget {
  const SuccessScreen({super.key});

  @override
  State<SuccessScreen> createState() => _SuccessScreenState();
}

class _SuccessScreenState extends State<SuccessScreen> {

  bool isclicked = false;

  @override
  Widget build(BuildContext context) {
    final _screenWidth = MediaQuery.of(context).size.width;
    final _screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
              left: _screenWidth * 0.07, right: _screenWidth * 0.07),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: _screenHeight * .06,
              ),
              const Text("Foodie", style: TextStyle(color: appBackgroundColorDark, fontSize: 34, fontWeight: FontWeight.bold, fontFamily: 'Bolder'),),

              SizedBox(
                height: _screenHeight * 0.25,
              ),
              Center(child: Image.asset("assets/images/check.png", width: 100,)),
              SizedBox(
                height: _screenHeight * 0.02,
              ),
              Center(
                child: GestureDetector(
                  onTap: (){nextScreen(context, const SignIn());},
                  child: Container(
                    height: _screenHeight * 0.06,
                    width: _screenWidth * 0.7,
                    decoration: BoxDecoration(
                      color: appColorPrimary,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: const Center(
                      child: Text(
                        "Pendaftaran Berhasil!",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14, color: appWhite),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: _screenHeight * 0.04,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Kembali ke halaman utama? ',
                          style: GoogleFonts.poppins(
                            fontSize: _screenHeight * .02,
                            color: appTextColorPrimary,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextSpan(
                          text: 'Klick Disini',
                          style: GoogleFonts.poppins(
                            fontSize: _screenHeight * .02,
                            color: appColorPrimary,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),


            ],
          ),
        ),
      ),
    );
  }
}
