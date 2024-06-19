import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/colors.dart';
import '../utils/next_screen.dart';
import '../utils/util.dart';
import '../widgets/global.dart';
import '../widgets/staticprogress.dart';
import 'success.dart';

class Password extends StatefulWidget {
  const Password({super.key});

  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {

  TextEditingController passwordCont = TextEditingController();
  TextEditingController confirmPasswordCont = TextEditingController();
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
              const StaticProgress(2),
              SizedBox(
                height: _screenHeight * 0.07,
              ),
              buildTextField(
                context,
                passwordCont,
                "Masukkan Password",
              ),
              SizedBox(
                height: _screenHeight * 0.04,
              ),
              buildTextField(
                context,
                confirmPasswordCont,
                "Ulangi Password",
              ),
              SizedBox(
                height: _screenHeight * 0.13,
              ),
              foodieSubmitButton(
                  context, () => {
                    nextScreen(context, const SuccessScreen()),
              },
                  "SIMPAN",
              ),

            ],
          ),
        ),
      ),
    );
  }
}
