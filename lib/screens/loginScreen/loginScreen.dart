import 'package:craft_my_plate/widgets/textField.dart';

import '../../consts/consts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: size.height * 0.35,
              color: purple,
              child: Column(
                children: [
                  20.heightBox,
                  Image.asset(logo,width: size.width *0.5,),
                  10.heightBox,
                  appname.text.size(20).fontFamily(lexend).align(TextAlign.center).fontWeight(FontWeight.w400).color(white).make()
                ],
              ),
            ),
            20.heightBox,
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  "${login} or ${signup}".text.size(14).fontFamily(lexend).fontWeight(FontWeight.w500).color(darkFontGrey).make(),
                  20.heightBox,
                  customTextField(hint:"+91  ${phoneHintText}"),
                  20.heightBox,
                  SizedBox(
                    width: double.infinity,
                    height: size.height * 0.06,
                    child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(purple),
                        ),
                        onPressed: (){},
                        child: buttonText.text.size(14).fontFamily(lexend).fontWeight(FontWeight.w400).color(white).make()
                    ),
                  ),

                ],
              ),
            ),
            Spacer(),
            Align(
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  agreeText.text.size(13).fontFamily(lexend).align(TextAlign.center).fontWeight(FontWeight.w300).color(fontGrey).make(),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      "${tnc}".text.size(13).fontFamily(lexend).underline.align(TextAlign.center).fontWeight(FontWeight.w300).color(fontGrey).make().onTap(() { }),
                      10.widthBox,
                      "${privacy}".text.size(13).fontFamily(lexend).underline.align(TextAlign.center).fontWeight(FontWeight.w300).color(fontGrey).make().onTap(() { }),
                    ],
                  ),
                  5.heightBox,
                  Container(width: size.width *0.5,height:7,decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: purple)),
                  20.heightBox,
                ],
              ),
            )
          ],
        ),

      ),
    );
  }
}
