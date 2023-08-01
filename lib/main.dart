import '../../consts/consts.dart';
import 'package:craft_my_plate/screens/splashScreens/splashScreen1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Craft My Plate',
      debugShowCheckedModeBanner: false,
      home:SplashScreen1(),
    );
  }
}

