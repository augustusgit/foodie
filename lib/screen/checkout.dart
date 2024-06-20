import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:latlong2/latlong.dart';

import '../utils/colors.dart';
import '../utils/next_screen.dart';
import '../widgets/global.dart';
import 'profile.dart';

class Checkout extends StatefulWidget {
  const Checkout({super.key});

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {

  @override
  Widget build(BuildContext context) {
    final _screenWidth = MediaQuery.of(context).size.width;
    final _screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
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
        title: const Text(
          'Checkout',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
                left: _screenWidth * 0.07, right: _screenWidth * 0.07),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                SizedBox(
                  width: _screenWidth * 0.9,
                  height: _screenHeight * 0.45,
                  child: FlutterMap(
                    options: const MapOptions(
                      initialCenter: LatLng(41, 29),
                      initialZoom: 8.0,
                    ),
                    children: [
                      TileLayer(
                          urlTemplate:
                          "https://tile.openstreetmap.org/{z}/{x}/{y}.png",
                          subdomains: ['a', 'b', 'c'],
                          userAgentPackageName: 'com.augustus.foodie',
                      ),
                      MarkerLayer(markers: [
                        // Marker(
                        //   width: 30,
                        //   height: 30,
                        //   point: const LatLng(41.1277837, 28.8125302),
                        //   child: Container(
                        //     // decoration: const BoxDecoration(
                        //     //   color: Colors.white,
                        //     //   shape: BoxShape.circle,
                        //     // ),
                        //     // padding: EdgeInsets.all(8),
                        //     child: Image.asset(
                        //         "assets/icons/marker.png",
                        //         ),
                        //   ),
                        // ),
                        // Marker(
                        //   width: 30,
                        //   height: 30,
                        //   point: const LatLng(41.0973412, 29.0005743),
                        //   child: Container(
                        //     // decoration: const BoxDecoration(
                        //     //   color: Colors.white,
                        //     //   shape: BoxShape.circle,
                        //     // ),
                        //     // padding: EdgeInsets.all(8),
                        //     child: Image.asset(
                        //       "assets/icons/marker.png",
                        //     ),
                        //   ),
                        // ),
                        Marker(
                          width: 30,
                          height: 30,
                          point: const LatLng(40.9239525, 29.1231561),
                          child: Image.asset(
                            "assets/icons/marker.png",
                          ),
                        ),
                      ])
                    ],
                  ),
                ),
                SizedBox(
                  height: _screenHeight * 0.016,
                ),
          
                ListTile(
                  leading: Column(
                    children: [
                      Image.asset(
                        "assets/icons/location.png",
                        width: 30,
                      ),
                    ],
                  ),
                  title: Text(
                    "Delivery address",
                    style: GoogleFonts.poppins(
                        color: appBackgroundColorDark,
                        fontSize: _screenHeight * .020,
                    ),
                  ),
                  subtitle: Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Text(
                      "Kancilan, Kembang, Jepara",
                      style: GoogleFonts.poppins(
                          color: appBackgroundColorDark,
                          fontSize: _screenHeight * .020,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: _screenHeight * 0.016,
                ),

                ListTile(
                  leading: Column(
                    children: [
                      Image.asset(
                        "assets/icons/flag.png",
                        width: 30,
                      ),
                    ],
                  ),
                  title: Text(
                    "Arrive in",
                    style: GoogleFonts.poppins(
                      color: appBackgroundColorDark,
                      fontSize: _screenHeight * .020,
                    ),
                  ),
                  subtitle: Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Text(
                      "15 Minutes",
                      style: GoogleFonts.poppins(
                          color: appBackgroundColorDark,
                          fontSize: _screenHeight * .020,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
                const Divider(thickness: 0.5),
                ListTile(
                  trailing: Stack(
                    children: [
                      Image.asset(
                        "assets/images/rectbg.png",
                        width: 45,
                      ),

                      Positioned(
                        top: 10,
                        bottom: 10,
                        left: 10,
                        right: 10,
                        child: Image.asset(
                          "assets/icons/phone.png",
                          width: 20,
                        ),
                      ),
                    ],
                  ),
                  // trailing: Image.asset(
                  //   "assets/images/rectbg.png",
                  //   width: 45,
                  // ),
                  leading: Column(
                    children: [
                      Image.asset(
                        "assets/images/user.png",
                        width: 55,
                      ),
                    ],
                  ),
                  subtitle: Text(
                    "Courier",
                    style: GoogleFonts.poppins(
                      color: appBackgroundColorDark,
                      fontSize: _screenHeight * .020,
                    ),
                  ),
                  title: Text(
                    "Harno Resing",
                    style: GoogleFonts.poppins(
                        color: appBackgroundColorDark,
                        fontSize: _screenHeight * .020,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                SizedBox(
                  height: _screenHeight * 0.02,
                ),

                foodieSubmitButton(
                  context, () => {},
                  "Live Tracking",
                ),
                SizedBox(
                  height: _screenHeight * 0.03,
                ),
              ],
            ),
          ),
        ),
    );
  }
}
