import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/colors.dart';
import '../utils/validation/validation_builder.dart';
import 'intl_util.dart';
import 'text_field/custom_text_field.dart';

Widget buildTextField(BuildContext context, TextEditingController controller, String label) => Container(
  constraints: const BoxConstraints(
    maxWidth: 500.0,
  ),
  child: CustomTextField(
    controller: controller,
    labelText: IntlUtil.translate(label),
    onChanged: (_) {},
    validator: ValidationBuilder().isNotBlank().build,
  ),
);


TextFormField foodieSufixPrefixFormField(
    {required BuildContext context,
      required TextEditingController controller,
      required FocusNode focusNode,
      required String hintText,
      required TextInputType keyboardType,
      String? Function(String?)? validator,
      Function()? showPass,
      bool autofocus = false,
      bool isObscure = true,
      void Function(String)? onFieldSubmitted}) {
  final _screenHeight = MediaQuery.of(context).size.height;
  return TextFormField(
    obscureText: isObscure,
    controller: controller,
    decoration: InputDecoration(
      prefixIcon: IconButton(
        icon: Icon(
          Icons.search_outlined,
          color: const Color.fromRGBO(196, 196, 196, 1),
          size: _screenHeight * .0248,
        ),
        onPressed: showPass,
      ),
      suffixIcon: IconButton(
        icon: Image.asset("assets/images/filter.png"),
        onPressed: showPass,
      ),
      border: InputBorder.none,
      filled: true,
      fillColor: inputBackgroundColor,
      focusColor: inputBorderColor,
      hintText: hintText,
      hintStyle: GoogleFonts.poppins(
          color: appColorPrimary, fontSize: _screenHeight * .017),
      focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.zero,
          borderSide: BorderSide(color: inputBorderColor, width: 1)),
      enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.zero,
          borderSide: BorderSide(
              color: iconColorSecondary, style: BorderStyle.solid, width: 1)),
      errorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.zero,
          borderSide: BorderSide(
              color: iconColorSecondary, style: BorderStyle.solid, width: 1)),
    ),
    keyboardType: keyboardType,
    textInputAction: TextInputAction.next,
    autofocus: false,
    textCapitalization: TextCapitalization.words,
    focusNode: focusNode,
    validator: validator,
    onFieldSubmitted: onFieldSubmitted,
  );
}


Widget foodieSubmitButton(BuildContext context, Function()? onTap, String title) {
  final screenWidth = MediaQuery.of(context).size.width;
  return SizedBox(
    width: screenWidth * 0.9,
    height: 55.0,
    child: ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(0), backgroundColor: appColorPrimary,
        textStyle: const TextStyle(
          color: Colors.white,
        ), // background
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0)
        ),
      ),
      child: Text(
        title,
        style: GoogleFonts.poppins(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
      ),
    ),
  );
}


Widget foodieBlackButton(BuildContext context, Function()? onTap, String title) {
  final screenWidth = MediaQuery.of(context).size.width;
  return SizedBox(
    width: screenWidth * 0.9,
    height: 55.0,
    child: ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(0), backgroundColor: appBackgroundColorDark,
        textStyle: const TextStyle(
          color: Colors.white,
        ), // background
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0)
        ),
      ),
      child: Text(
        title,
        style: GoogleFonts.poppins(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
      ),
    ),
  );
}