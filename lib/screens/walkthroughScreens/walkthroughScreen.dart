// walkthroughScreen

import 'package:craft_my_plate/screens/loginScreen/loginScreen.dart';
import 'package:craft_my_plate/widgets/mySlider.dart';
import '../../consts/consts.dart';

class WalkThroughScreen extends StatefulWidget {
  const WalkThroughScreen({Key? key}) : super(key: key);

  @override
  State<WalkThroughScreen> createState() => _WalkThroughScreen1State();
}

class _WalkThroughScreen1State extends State<WalkThroughScreen> {

  var controller ;

  @override
  void initState() {
    controller = new PageController(
      viewportFraction: 1,
    );
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
          padding: EdgeInsets.all(15.0),
          child: Center(
            child: Column(
              children: [
               (size.height * 0.05).heightBox,
               Align(
                 alignment: Alignment.topRight,
                 child: SizedBox(
                   height:25,
                   child: ElevatedButton(
                        onPressed:(){
                         Navigator.pushReplacement(context,MaterialPageRoute(builder:(context) => LoginScreen()));
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(fontPurple),
                        ),
                        child: skip.text.fontWeight(FontWeight.w400).size(14).fontFamily(lexend).color(purple).make(),
                    ),
                 ),
               ),
                Spacer(),
                MySlider(context , controller),
              ],
            ),
          )
      ),
    );
  }
}
