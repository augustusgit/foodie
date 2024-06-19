import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../widgets/global.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  TextEditingController searchCont = TextEditingController();
  FocusNode searchNode = FocusNode();

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
                height: _screenHeight * 0.05,
              ),

              foodieSufixPrefixFormField(context: context, controller: searchCont, focusNode: searchNode, hintText: 'Mau makan apa hari ini ?', keyboardType: TextInputType.text, ),
            ],
          ),
        ),
      ),
    );
  }


}
