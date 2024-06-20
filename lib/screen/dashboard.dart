import 'package:flutter/material.dart';
import 'package:foodie/utils/next_screen.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/colors.dart';
import '../widgets/global.dart';
import 'product_detail.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  TextEditingController searchCont = TextEditingController();
  FocusNode searchNode = FocusNode();

  final List<Map<String, dynamic>> _listfoods = [
    {
      'image': 'assets/images/food1.png',
      'title': 'Gado Gado',
      'price': 'Rp 15.000,00',
    },
    {
      'image': 'assets/images/food2.png',
      'title': 'Laniya Gado',
      'price': 'Rp 12.000,00',

    },
    {
      'image': 'assets/images/food1.png',
      'title': 'Gado Gado',
      'price': 'Rp 15.000,00',
    },
    {
      'image': 'assets/images/food1.png',
      'title': 'Laniya Gado',
      'price': 'Rp 12.000,00',

    },
  ];

  @override
  void initState() {

    super.initState();
  }

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
              const Text("Foodie Express", style: TextStyle(color: appBackgroundColorDark, fontSize: 34, fontWeight: FontWeight.bold, fontFamily: 'Bolder'),),

              SizedBox(
                height: _screenHeight * 0.02,
              ),

              foodieSufixPrefixFormField(context: context, controller: searchCont, focusNode: searchNode, hintText: 'Mau makan apa hari ini ?', keyboardType: TextInputType.text, ),
              SizedBox(
                height: _screenHeight * 0.02,
              ),
              ClipRRect(
                // borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                    "assets/images/banner.png",
                    fit: BoxFit.cover),
              ),
              SizedBox(
                height: _screenHeight * 0.02,
              ),
              Text(
                "Mau Makan Apa Hari Ini?",
                style: GoogleFonts.poppins(
                  color: appBackgroundColorDark,
                  fontSize: _screenHeight * .022,
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(
                height: _screenHeight * 0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        "assets/icons/meat.png",
                        width: 50,
                      ),
                      const Text("Daging", style: TextStyle(color: appBackgroundColorDark, fontSize: 14, fontWeight: FontWeight.bold),),
                    ],
                  ),
                  SizedBox(
                    width: _screenWidth * 0.1,
                  ),
                  Column(
                    children: [
                      Image.asset(
                        "assets/icons/rice.png",
                        width: 50,
                      ),
                      const Text("Nasi", style: TextStyle(color: appBackgroundColorDark, fontSize: 14, fontWeight: FontWeight.bold),),
                    ],
                  ),
                  SizedBox(
                    width: _screenWidth * 0.1,
                  ),
                  Column(
                    children: [
                      Image.asset(
                        "assets/icons/cup.png",
                        width: 50,
                      ),
                      const Text("Es", style: TextStyle(color: appBackgroundColorDark, fontSize: 14, fontWeight: FontWeight.bold),),
                    ],
                  ),

                  SizedBox(
                    width: _screenWidth * 0.1,
                  ),
                  Column(
                    children: [
                      Image.asset(
                        "assets/icons/salad.png",
                        width: 50,
                      ),
                      const Text("Salad", style: TextStyle(color: appBackgroundColorDark, fontSize: 14, fontWeight: FontWeight.bold),),
                    ],
                  ),
                ],
              ),

              SizedBox(
                height: _screenHeight * 0.03,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Makanan Populer",
                    style: GoogleFonts.poppins(
                        color: appBackgroundColorDark,
                        fontSize: _screenHeight * .022,
                        fontWeight: FontWeight.bold
                    ),
                  ),

                  Text(
                    "Lainnya",
                    style: GoogleFonts.poppins(
                        color: appColorPrimary,
                        fontSize: _screenHeight * .016,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: _screenHeight * 0.28,
                child: ListView.builder(
                  itemCount: _listfoods.length,
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {

                    return GestureDetector(
                      onTap: (){nextScreen(context, const ProductDetails());},
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: _screenWidth * 0.05, vertical: _screenWidth * 0.02,),
                        margin: EdgeInsets.only(right: _screenWidth * 0.04),
                        color: Colors.grey.shade100,
                        width: _screenWidth * 0.55,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                _listfoods[index]['image'],
                                height: _screenHeight * 0.15,
                                fit: BoxFit.cover,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      _listfoods[index]['title'],
                                      style: GoogleFonts.poppins(
                                        color: appBackgroundColorDark,
                                        fontSize: _screenHeight * .02,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Image.asset(
                                          "assets/icons/bike.png",
                                          width: 20,
                                        ),
                                        Text(
                                          "Gado Gado",
                                          style: GoogleFonts.poppins(
                                            color: appBackgroundColorDark,
                                            fontSize: _screenHeight * .01,
                                          ),
                                        ),
                                        SizedBox(
                                          width: _screenWidth * 0.06,
                                        ),
                                        Image.asset(
                                          "assets/icons/alarm.png",
                                          width: 20,
                                        ),
                                        Text(
                                          "10-15 mins",
                                          style: GoogleFonts.poppins(
                                            color: appBackgroundColorDark,
                                            fontSize: _screenHeight * .01,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: _screenHeight * 0.016,
                                    ),
                                    Center(
                                      child: Text(
                                        _listfoods[index]['price'],
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "MInuman Populer",
                    style: GoogleFonts.poppins(
                        color: appBackgroundColorDark,
                        fontSize: _screenHeight * .022,
                        fontWeight: FontWeight.bold
                    ),
                  ),

                  Text(
                    "Lainnya",
                    style: GoogleFonts.poppins(
                      color: appColorPrimary,
                      fontSize: _screenHeight * .016,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: _screenHeight * 0.28,
                child: ListView.builder(
                  itemCount: _listfoods.length,
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {

                    return GestureDetector(
                      onTap: (){nextScreen(context, const ProductDetails());},
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: _screenWidth * 0.05, vertical: _screenWidth * 0.02,),
                        margin: EdgeInsets.only(right: _screenWidth * 0.04),
                        color: Colors.grey.shade100,
                        width: _screenWidth * 0.55,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                _listfoods[index]['image'],
                                height: _screenHeight * 0.15,
                                fit: BoxFit.cover,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      _listfoods[index]['title'],
                                      style: GoogleFonts.poppins(
                                        color: appBackgroundColorDark,
                                        fontSize: _screenHeight * .02,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Image.asset(
                                          "assets/icons/bike.png",
                                          width: 20,
                                        ),
                                        Text(
                                          "Gado Gado",
                                          style: GoogleFonts.poppins(
                                            color: appBackgroundColorDark,
                                            fontSize: _screenHeight * .01,
                                          ),
                                        ),
                                        SizedBox(
                                          width: _screenWidth * 0.06,
                                        ),
                                        Image.asset(
                                          "assets/icons/alarm.png",
                                          width: 20,
                                        ),
                                        Text(
                                          "10-15 mins",
                                          style: GoogleFonts.poppins(
                                            color: appBackgroundColorDark,
                                            fontSize: _screenHeight * .01,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: _screenHeight * 0.016,
                                    ),
                                    Center(
                                      child: Text(
                                        _listfoods[index]['price'],
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }


}
