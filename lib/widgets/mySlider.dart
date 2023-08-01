
import 'package:craft_my_plate/screens/loginScreen/loginScreen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../consts/consts.dart';

Widget MySlider (BuildContext context , PageController controller){
  var size = MediaQuery.of(context).size;
  return Container(
    width: double.infinity,
    height: size.height * 0.75,
    child: Column(
      children: [
        Expanded(
            child:PageView(
              controller: controller,
              children: [
                Container(
                  height: size.height,
                  width: size.width,
                  child: Column(
                    children: [
                        Image.asset(walkImg1),
                        10.heightBox,
                        createYourPlate.text.size(25).fontFamily(capriola).align(TextAlign.center).fontWeight(FontWeight.w400).color(Colors.black).make(),
                        10.heightBox,
                        createYourPlateDecs.text.size(14).fontFamily(lexend).align(TextAlign.center).fontWeight(FontWeight.w300).color(fontGrey).make(),
                    ],
                  ),
                ),
                Container(
                  height: size.height,
                  width: size.width,
                  child: Column(
                    children: [
                      Image.asset(walkImg2),
                      10.heightBox,
                      exqCatering.text.size(25).fontFamily(capriola).align(TextAlign.center).fontWeight(FontWeight.w400).color(Colors.black).make(),
                      10.heightBox,
                      exqCateringDesc.text.size(14).fontFamily(lexend).align(TextAlign.center).fontWeight(FontWeight.w300).color(fontGrey).make(),
                    ],
                  ),
                ),
                Container(
                  height: size.height,
                  width: size.width,
                  child: Column(
                    children: [
                      Image.asset(walkImg3),
                      10.heightBox,
                      exqCatering.text.size(25).fontFamily(capriola).align(TextAlign.center).fontWeight(FontWeight.w400).color(Colors.black).make(),
                      10.heightBox,
                      exqCateringDesc.text.size(14).fontFamily(lexend).align(TextAlign.center).fontWeight(FontWeight.w300).color(fontGrey).make(),
                      40.heightBox,
                      Container(
                        height:60,
                        width:200,
                        decoration: BoxDecoration(
                          color: fontPurple,
                          borderRadius: BorderRadius.circular(50)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            "Get Started".text.size(16).fontFamily(lexend).align(TextAlign.center).fontWeight(FontWeight.w400).color(purple).make(),
                            Container(
                              height:50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: purple,
                                shape: BoxShape.circle,
                              ),
                              child: Icon(Icons.arrow_forward,color: Colors.white,)
                            ),
                          ],
                        ),
                      ).onTap(() {
                        Navigator.pushReplacement(context,MaterialPageRoute(builder:(context) => LoginScreen()));
                      }),
                    ],
                  ),
                ),
              ],
            )
        ),
        SmoothPageIndicator(
           controller: controller,
           count:3,
           axisDirection: Axis.horizontal,
           effect: SlideEffect(
           activeDotColor: purple,
           dotHeight: 8,
           dotColor: fontPurple,
           dotWidth: 24,
         ),
       ),
        50.heightBox,

      ],
    ),
  );
}


