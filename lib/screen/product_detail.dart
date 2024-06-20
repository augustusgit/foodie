import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/colors.dart';
import '../utils/next_screen.dart';
import '../widgets/global.dart';
import 'cart.dart';

enum PaymentMethod { flutterwave, banktransfer, paypal, stripe, razorpay, cod }
class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {

  PaymentMethod _selectedMethod = PaymentMethod.flutterwave;

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
          'Product detail',
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
                ClipRRect(
                  // borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                      "assets/images/food1.png",
                      fit: BoxFit.cover),
                ),
                SizedBox(
                  height: _screenHeight * 0.016,
                ),
                Text(
                  'Gado Gado',
                  style: GoogleFonts.poppins(
                    color: appBackgroundColorDark,
                    fontSize: _screenHeight * .035,
                    fontWeight: FontWeight.bold,
          
                  ),
                ),
                Row(
                  children: [
                    Image.asset(
                      "assets/icons/rating.png",
                      width: 30,
                    ),
                    Text(
                      "4.5",
                      style: GoogleFonts.poppins(
                        color: appBackgroundColorDark,
                        fontSize: _screenHeight * .016,
                      ),
                    ),
                    SizedBox(
                      width: _screenWidth * 0.025,
                    ),
                    Text(
                      "(70+)",
                      style: GoogleFonts.poppins(
                        color: appBackgroundColorDark,
                        fontSize: _screenHeight * .016,
                      ),
                    ),
                    SizedBox(
                      width: _screenWidth * 0.06,
                    ),
          
                    Text(
                      "Lihat Reviews",
                      style: GoogleFonts.poppins(
                        color: appColorPrimary,
                        fontSize: _screenHeight * .01,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CircleAvatar(
                      radius: 15,
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
                      radius: 15,
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        icon: const Icon(Icons.add),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: _screenHeight * 0.016,
                ),
          
                Text(
                  "Deskripsi",
                  style: GoogleFonts.poppins(
                      color: appBackgroundColorDark,
                      fontSize: _screenHeight * .022,
                      fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(
                  height: _screenHeight * 0.016,
                ),
          
                Text(
                  "Gado-gado makanan khas Jakarta berisi sayur-sayuran yang direbus, irisan telur dan tahu, serta ditaburi bawang goreng dan rasa kasih sayang.",
                  style: GoogleFonts.poppins(
                    color: appBackgroundColorDark,
                    fontSize: _screenHeight * .015,
                  ),
                  maxLines: 16,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: _screenHeight * 0.02,
                ),
                Text(
                  "Tambahan",
                  style: GoogleFonts.poppins(
                      color: appBackgroundColorDark,
                      fontSize: _screenHeight * .022,
                      fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(
                  height: _screenHeight * 0.01,
                ),
          
                ListTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Kerupuk",
                        style: GoogleFonts.poppins(
                          color: appBackgroundColorDark,
                          fontSize: _screenHeight * .017,
                        ),
                      ),
                      Text(
                        "Rp 5000",
                        style: GoogleFonts.poppins(
                          color: appBackgroundColorDark,
                          fontSize: _screenHeight * .017,
                        ),
                      ),
                    ],
                  ),
                  trailing: Radio(
                    value: PaymentMethod.paypal,
                    groupValue: _selectedMethod,
                    onChanged: ( value) {
                      setState(() {
                        _selectedMethod = value!;
                      });
                    },
                  ),
                ),

                ListTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Sayuran",
                        style: GoogleFonts.poppins(
                          color: appBackgroundColorDark,
                          fontSize: _screenHeight * .017,
                        ),
                      ),
                      Text(
                        "Rp 2000",
                        style: GoogleFonts.poppins(
                          color: appBackgroundColorDark,
                          fontSize: _screenHeight * .017,
                        ),
                      ),
                    ],
                  ),
                  trailing: Radio(
                    value: PaymentMethod.razorpay,
                    groupValue: _selectedMethod,
                    onChanged: ( value) {
                      setState(() {
                        _selectedMethod = value!;
                      });
                    },
                  ),

                ),
                ListTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Bumbu Kacang",
                        style: GoogleFonts.poppins(
                          color: appBackgroundColorDark,
                          fontSize: _screenHeight * .017,
                        ),
                      ),
                      Text(
                        "Rp 4000",
                        style: GoogleFonts.poppins(
                          color: appBackgroundColorDark,
                          fontSize: _screenHeight * .017,
                        ),
                      ),
                    ],
                  ),
                  trailing: Radio(
                    value: PaymentMethod.cod,
                    groupValue: _selectedMethod,
                    onChanged: ( value) {
                      setState(() {
                        _selectedMethod = value!;
                      });
                    },
                  ),

                ),
                SizedBox(
                  height: _screenHeight * 0.02,
                ),
                Center(
                  child: foodieRoundIconButton(
                    context, () => {},
                    "Tambah Ke Troli", width: _screenWidth * 0.6,
                  ),
                ),
                SizedBox(
                  height: _screenHeight * 0.02,
                ),
              ],
            ),
          ),
        ),
    );
  }
}
