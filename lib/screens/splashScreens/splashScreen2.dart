import 'dart:async';

import 'package:craft_my_plate/screens/walkthroughScreens/walkthroughScreen.dart';

import '../../consts/consts.dart';


class SplashScreen2 extends StatefulWidget {
  const SplashScreen2({Key? key}) : super(key: key);

  @override
  State<SplashScreen2> createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds:2),
            () => Navigator.pushReplacement(context,MaterialPageRoute(builder:(context) => WalkThroughScreen()))
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
                10.heightBox,
                appname.text.size(32).fontFamily(capriola).fontWeight(FontWeight.w400).color(golden).make(),
                tagline.text.size(16).fontFamily(courgette).fontWeight(FontWeight.w400).color(darkgolden).make(),

              ],
            ),
          )
      ),
    );
  }
}
