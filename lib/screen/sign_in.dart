import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/colors.dart';
import '../widgets/global.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  bool isclicked = false;
  int? groupValue = 0;
  List<bool> _isSelected = [true, false];
  late var fragments;

  @override
  void initState() {

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final _screenWidth = MediaQuery.of(context).size.width;
    final _screenHeight = MediaQuery.of(context).size.height;
    fragments = [getEmailSignInLayout(), getTelephoneSignInLayout()];
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
              left: _screenWidth * 0.07, right: _screenWidth * 0.07),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: _screenHeight * .07,
              ),
              const Text("Foodie", style: TextStyle(color: appBackgroundColorDark, fontSize: 34, fontWeight: FontWeight.bold, fontFamily: 'Bolder'),),
              Text(
                "Hallo, Selamat Datang !",
                style: GoogleFonts.poppins(
                  color: appBackgroundColorDark,
                  fontWeight: FontWeight.w400,
                  fontSize: _screenHeight * .015,
                ),
              ),
              SizedBox(
                height: _screenHeight * 0.07,
              ),

              ToggleButtons(
                borderColor: appBackgroundColorDark,
                selectedBorderColor: appColorPrimary,
                borderWidth: 1,
                selectedColor: Colors.white,
                color: appBackgroundColorDark,
                fillColor: appColorPrimary,
                borderRadius: BorderRadius.circular(10),
                onPressed: (int index) {
                  setState(() {
                    groupValue = index;
                    for (int buttonIndex = 0; buttonIndex < _isSelected.length; buttonIndex++) {
                      if (buttonIndex == index) {
                        _isSelected[buttonIndex] = true;
                      } else {
                        _isSelected[buttonIndex] = false;
                      }

                    }
                  });
                },
                isSelected: _isSelected,
                children: const <Widget>[
                  Padding(padding: EdgeInsets.symmetric(horizontal: 62, vertical: 20), child: Text('Email', style: TextStyle(fontWeight: FontWeight.bold, fontFamily: "Bolder"),)),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20), child: Text('No. Telephone', style: TextStyle(fontWeight: FontWeight.bold, fontFamily: "Bolder"),)),
                ],
              ),



              SizedBox(
                height: _screenHeight * 0.05,
              ),
              fragments[groupValue],
              // buildTextField(
              //   context,
              //   nameCont,
              //   "Masukkan Email",
              // ),
              // SizedBox(
              //   height: _screenHeight * 0.04,
              // ),
              // buildTextField(
              //   context,
              //   passCont,
              //   "Kata Sandi",
              // ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.end,
              //   children: [
              //     Text("Lupa Password?", style: GoogleFonts.poppins(
              //       fontSize: _screenHeight * .015,
              //       color: iconColorPrimary,
              //       fontWeight: FontWeight.w400,
              //     ),),
              //   ],
              // ),
              // SizedBox(
              //   height: _screenHeight * 0.04,
              // ),
              // foodieSubmitButton(
              //     context, () => {
              //       // nextScreen(context, const OTPScreen())
              // },
              //     "Login",
              // ),
              // SizedBox(
              //   height: _screenHeight * 0.02,
              // ),
              // Row(
              //   children: [
              //     Image.asset("assets/images/dividerline.png", width: 115,),
              //     SizedBox(
              //       width: _screenWidth * 0.02,
              //     ),
              //     Text(
              //       "Atau Melalui",
              //       style: GoogleFonts.poppins(
              //         color: appBackgroundColorDark,
              //         fontSize: _screenHeight * .015,
              //       ),
              //     ),
              //     SizedBox(
              //       width: _screenWidth * 0.02,
              //     ),
              //     Image.asset("assets/images/dividerline.png", width: 115,),
              //   ],
              // ),
              //
              // SizedBox(
              //   height: _screenHeight * 0.06,
              // ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Image.asset("assets/icons/google.png", width: 25,),
              //     SizedBox(
              //       width: _screenWidth * 0.02,
              //     ),
              //     Text(
              //       "Google",
              //       style: GoogleFonts.poppins(
              //         color: appBackgroundColorDark,
              //         fontWeight: FontWeight.bold,
              //         fontSize: _screenHeight * .02,
              //       ),
              //     ),
              //   ],
              // ),
              //
              // SizedBox(
              //   height: _screenHeight * 0.06,
              // ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     RichText(
              //       text: TextSpan(
              //         children: [
              //           TextSpan(
              //             text: 'Sudah Punya Akun ? ',
              //             style: GoogleFonts.poppins(
              //               fontSize: _screenHeight * .02,
              //               color: appTextColorPrimary,
              //               fontWeight: FontWeight.w400,
              //             ),
              //           ),
              //           TextSpan(
              //             text: 'Login',
              //             style: GoogleFonts.poppins(
              //               fontSize: _screenHeight * .02,
              //               color: appColorPrimary,
              //               fontWeight: FontWeight.w400,
              //             ),
              //           ),
              //         ],
              //       ),
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSegment(String text){
    return Text(text,style: const TextStyle(fontSize: 22,
        color: Colors.black),);
  }

  Widget getEmailSignInLayout(){
    final _screenWidth = MediaQuery.of(context).size.width;
    final _screenHeight = MediaQuery.of(context).size.height;
    TextEditingController nameCont = TextEditingController();
    TextEditingController passCont = TextEditingController();
    return Column(
      children: [
        buildTextField(
          context,
          nameCont,
          "Masukkan Email",
        ),
        SizedBox(
          height: _screenHeight * 0.04,
        ),
        buildTextField(
          context,
          passCont,
          "Kata Sandi",
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text("Lupa Password?", style: GoogleFonts.poppins(
              fontSize: _screenHeight * .015,
              color: iconColorPrimary,
              fontWeight: FontWeight.w400,
            ),),
          ],
        ),
        SizedBox(
          height: _screenHeight * 0.04,
        ),
        foodieSubmitButton(
          context, () => {
          // nextScreen(context, const OTPScreen())
        },
          "Login",
        ),
        SizedBox(
          height: _screenHeight * 0.02,
        ),
        Row(
          children: [
            Image.asset("assets/images/dividerline.png", width: 115,),
            SizedBox(
              width: _screenWidth * 0.02,
            ),
            Text(
              "Atau Melalui",
              style: GoogleFonts.poppins(
                color: appBackgroundColorDark,
                fontSize: _screenHeight * .015,
              ),
            ),
            SizedBox(
              width: _screenWidth * 0.02,
            ),
            Image.asset("assets/images/dividerline.png", width: 115,),
          ],
        ),

        SizedBox(
          height: _screenHeight * 0.06,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/icons/google.png", width: 25,),
            SizedBox(
              width: _screenWidth * 0.02,
            ),
            Text(
              "Google",
              style: GoogleFonts.poppins(
                color: appBackgroundColorDark,
                fontWeight: FontWeight.bold,
                fontSize: _screenHeight * .02,
              ),
            ),
          ],
        ),

        SizedBox(
          height: _screenHeight * 0.06,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Sudah Punya Akun ? ',
                    style: GoogleFonts.poppins(
                      fontSize: _screenHeight * .02,
                      color: appTextColorPrimary,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextSpan(
                    text: 'Login',
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
    );
  }

  Widget getTelephoneSignInLayout(){
    final _screenWidth = MediaQuery.of(context).size.width;
    final _screenHeight = MediaQuery.of(context).size.height;
    TextEditingController nameCont = TextEditingController();
    return Column(
      children: [
        buildTextField(
          context,
          nameCont,
          "Masukkan No. Telephone",
        ),
        SizedBox(
          height: _screenHeight * 0.04,
        ),


        foodieSubmitButton(
          context, () => {
          // nextScreen(context, const OTPScreen())
        },
          "Kirim Kode UTP",
        ),
        SizedBox(
          height: _screenHeight * 0.02,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset("assets/images/dividerline.png", width: 115,),
            // SizedBox(
            //   width: _screenWidth * 0.02,
            // ),
            // Text(
            //   "Atau Melalui",
            //   style: GoogleFonts.poppins(
            //     color: appBackgroundColorDark,
            //     fontSize: _screenHeight * .015,
            //   ),
            // ),
            // SizedBox(
            //   width: _screenWidth * 0.02,
            // ),
            Image.asset("assets/images/dividerline.png", width: 115,),
          ],
        ),

        SizedBox(
          height: _screenHeight * 0.06,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/icons/google.png", width: 25,),
            SizedBox(
              width: _screenWidth * 0.02,
            ),
            Text(
              "Google",
              style: GoogleFonts.poppins(
                color: appBackgroundColorDark,
                fontWeight: FontWeight.bold,
                fontSize: _screenHeight * .02,
              ),
            ),
          ],
        ),

        SizedBox(
          height: _screenHeight * 0.06,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Sudah Punya Akun ? ',
                    style: GoogleFonts.poppins(
                      fontSize: _screenHeight * .02,
                      color: appTextColorPrimary,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextSpan(
                    text: 'Login',
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
    );
  }

}
