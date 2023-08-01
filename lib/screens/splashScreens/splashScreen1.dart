import 'dart:async';

import 'package:craft_my_plate/screens/splashScreens/splashScreen2.dart';

import '../../consts/consts.dart';


class SplashScreen1 extends StatefulWidget {
  const SplashScreen1({Key? key}) : super(key: key);

  @override
  State<SplashScreen1> createState() => _SplashScreen1State();
}

class _SplashScreen1State extends State<SplashScreen1> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      Duration(seconds: 2),
        () => Navigator.pushReplacement(context,MaterialPageRoute(builder:(context) => SplashScreen2()))
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top:size.height * 0.25),
        color: purple,
        child: Center(
          child: Column(
            children: [
              Image.asset(logo),
              welcome.text.size(32).fontFamily(capriola).fontWeight(FontWeight.w400).color(golden).make(),
            ],
          ),
        )
      ),
    );
  }
}

