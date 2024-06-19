import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/colors.dart';
import '../utils/next_screen.dart';
import '../utils/util.dart';
import '../widgets/global.dart';
import '../widgets/staticprogress.dart';
import 'password.dart';

class OTPScreenContd extends StatefulWidget {
  const OTPScreenContd({super.key});

  @override
  State<OTPScreenContd> createState() => _OTPScreenContdState();
}

class _OTPScreenContdState extends State<OTPScreenContd> {

  TextEditingController pinCont1 = TextEditingController();
  TextEditingController pinCont2 = TextEditingController();
  TextEditingController pinCont3 = TextEditingController();
  TextEditingController pinCont4 = TextEditingController();
  TextEditingController pinCont5 = TextEditingController();
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
              const StaticProgress(1),
              SizedBox(
                height: _screenHeight * 0.02,
              ),
              Center(
                child: Container(
                  // padding: EdgeInsets.symmetric(horizontal: _screenWidth * 0.08),
                  height: _screenHeight * 0.05,
                  width: _screenWidth * 0.5,
                  decoration: BoxDecoration(
                    color: appColorAccent,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Text(
                      "!!! Kode OTP Salah",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 14, color: appWhite),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: _screenHeight * 0.04,
              ),
              Container(
                height: _screenHeight * 0.3,
                width: _screenWidth * 0.9,
                decoration: const BoxDecoration(
                    color: appColorPrimary,
                    // borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.arrow_back_ios_new,
                            color: appWhite,
                            shadows: <Shadow>[Shadow(color: Colors.black.withOpacity(0.6), offset: Offset(2,4), blurRadius: 5.0)],
                          ),
                          SizedBox(
                            width: _screenWidth * 0.09,
                          ),
                          const Text(
                            "Masukkan Kode Verifikasi",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14, color: appWhite),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: _screenHeight * 0.04,
                    ),
                    SizedBox(
                      width: _screenWidth * 0.7,
                      child: const Text(
                        "Kode verifikasi (OTP) telah dikirim melalui SMS ke 0863746238642864",
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 14, color: appWhite),
                      ),
                    ),
                    SizedBox(
                      height: _screenHeight * 0.04,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: _screenWidth * 0.1,
                          child: TextFormField(
                            controller: pinCont1,
                            textAlign: TextAlign.center,
                            style: TextStyle(color: appWhite, fontSize: _screenHeight * .02, fontWeight: FontWeight.w800),
                            decoration: InputDecoration(
                              hintStyle: GoogleFonts.poppins(
                                  color: appWhite, fontSize: _screenHeight * .02),
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
                        SizedBox(
                          width: _screenWidth * 0.03,
                        ),
                        SizedBox(
                          width: _screenWidth * 0.1,
                          child: TextFormField(
                            controller: pinCont2,
                            textAlign: TextAlign.center,
                            style: TextStyle(color: appWhite, fontSize: _screenHeight * .02, fontWeight: FontWeight.w800),
                            decoration: InputDecoration(
                              hintStyle: GoogleFonts.poppins(
                                  color: appWhite, fontSize: _screenHeight * .02),
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
                        SizedBox(
                          width: _screenWidth * 0.03,
                        ),
                        SizedBox(
                          width: _screenWidth * 0.1,
                          child: TextFormField(
                            controller: pinCont3,
                            textAlign: TextAlign.center,
                            style: TextStyle(color: appWhite, fontSize: _screenHeight * .02, fontWeight: FontWeight.w800),
                            decoration: InputDecoration(
                              hintStyle: GoogleFonts.poppins(
                                  color: appWhite, fontSize: _screenHeight * .02),
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
                        SizedBox(
                          width: _screenWidth * 0.03,
                        ),
                        SizedBox(
                          width: _screenWidth * 0.1,
                          child: TextFormField(
                            controller: pinCont4,
                            textAlign: TextAlign.center,
                            style: TextStyle(color: appWhite, fontSize: _screenHeight * .02, fontWeight: FontWeight.w800),
                            decoration: InputDecoration(
                              hintStyle: GoogleFonts.poppins(
                                  color: appWhite, fontSize: _screenHeight * .02),
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
                        SizedBox(
                          width: _screenWidth * 0.03,
                        ),
                        SizedBox(
                          width: _screenWidth * 0.1,
                          child: TextFormField(
                            controller: pinCont5,
                            textAlign: TextAlign.center,
                            style: TextStyle(color: appWhite, fontSize: _screenHeight * .02, fontWeight: FontWeight.w800),
                            decoration: InputDecoration(
                              hintStyle: GoogleFonts.poppins(
                                  color: appWhite, fontSize: _screenHeight * .02, fontWeight: FontWeight.w800),
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
                    )

                  ],
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
                          text: 'Tidak Menerima Kode? ',
                          style: GoogleFonts.poppins(
                            fontSize: _screenHeight * .02,
                            color: appTextColorPrimary,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextSpan(
                          text: 'Kirim Ulang',
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
              SizedBox(
                height: _screenHeight * 0.07,
              ),
              foodieSubmitButton(
                  context, () => {
                    nextScreen(context, const Password()),
              },
                  "VERIFIKASI",
              ),

            ],
          ),
        ),
      ),
    );
  }
}
