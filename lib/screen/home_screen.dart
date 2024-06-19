import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/colors.dart';
import '../utils/next_screen.dart';
import '../widgets/global.dart';
import 'otp_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  TextEditingController nameCont = TextEditingController();
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
                height: _screenHeight * 0.1,
              ),
              !isclicked ? foodieBlackButton(
                  context, () => {
              setState(() {
              isclicked = true;
              }),
                showDialog(
                    context: context,
                    builder: (_) {
                      return AlertDialog(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0.0)
                          ),
                          backgroundColor: appWhite,
                          content: Container(
                            // color: appWhite,
                            height: 140,
                            // width: _screenWidth * 0.7,
                            child: Column(
                              children: [
                                const Text(
                                    "Kamu akan menerima kode verifikasi (OTP) melalui nomor 0863746238642864"),
                                const SizedBox(
                                  height: 25,
                                ),
                                Row(
                                  // mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: _screenWidth * 0.31,
                                      child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(0.0)
                                          ),),
                                          onPressed: () {
                                            setState(() {
                                              isclicked = false;
                                            });
                                            Navigator.of(context).pop();
                                          },
                                          child: const Text("NANTI SAJA", style: TextStyle(color: appTextColorPrimary, fontSize: 12),)),
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    SizedBox(
                                      width: _screenWidth * 0.31,
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: appColorPrimary,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(0.0)
                                          ),
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            isclicked = false;
                                          });
                                          Navigator.of(context).pop();
                                        },
                                        child: const Text("LANJUTKAN", style: TextStyle(color: appWhite, fontSize: 12),),),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ));
                    }),
              },
                  "DAFTAR",
              ) : foodieSubmitButton(
                context, () => {
              setState(() {
              isclicked = true;
              }),
                showDialog(
                    context: context,
                    builder: (_) {
                      return AlertDialog(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0.0)
                          ),
                          backgroundColor: appWhite,
                          content: Container(
                            // color: appWhite,
                            height: 140,
                            // width: _screenWidth * 0.7,
                            child: Column(
                              children: [
                                const Text(
                                    "Kamu akan menerima kode verifikasi (OTP) melalui nomor 0863746238642864"),
                                const SizedBox(
                                  height: 25,
                                ),
                                Row(
                                  // mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: _screenWidth * 0.31,
                                      child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(0.0)
                                          ),),
                                          onPressed: () {
                                            setState(() {
                                              isclicked = false;
                                            });
                                            Navigator.of(context).pop();
                                          },
                                          child: const Text("NANTI SAJA", style: TextStyle(color: appTextColorPrimary, fontSize: 12),)),
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    SizedBox(
                                      width: _screenWidth * 0.31,
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: appColorPrimary,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(0.0)
                                          ),
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            isclicked = false;
                                          });
                                          Navigator.of(context).pop();
                                        },
                                        child: const Text("LANJUTKAN", style: TextStyle(color: appWhite, fontSize: 12),),),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ));
                    }),
              },
                "DAFTAR",
              ),
              SizedBox(
                height: _screenHeight * 0.07,
              ),
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
                    nextScreen(context, const OTPScreen())
              },
                  "BERIKUTNYA",
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
                height: _screenHeight * 0.03,
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
                height: _screenHeight * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Dengan mendaftar, Anda setuju dengan ',
                          style: GoogleFonts.poppins(
                            fontSize: _screenHeight * .015,
                            color: appTextColorPrimary,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextSpan(
                          text: 'syarat dan',
                          style: GoogleFonts.poppins(
                            fontSize: _screenHeight * .015,
                            color: appColorPrimary,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'dan kebijakan dari Foodie Express',
                          style: GoogleFonts.poppins(
                            fontSize: _screenHeight * .015,
                            color: appColorPrimary,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextSpan(
                          text: ' & ',
                          style: GoogleFonts.poppins(
                            fontSize: _screenHeight * .015,
                            color: appTextColorPrimary,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextSpan(
                          text: 'Kebijakan Privasi',
                          style: GoogleFonts.poppins(
                            fontSize: _screenHeight * .015,
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
          ),
        ),
      ),
    );
  }
}
