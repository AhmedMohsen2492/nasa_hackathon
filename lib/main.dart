import 'package:flutter/material.dart';
import 'package:nasa_hackathon/ui/screens/fish/fish_screen.dart';
import 'package:nasa_hackathon/ui/screens/home/home_screen.dart';
import 'package:nasa_hackathon/ui/screens/splash/splah_screen.dart';
import 'package:nasa_hackathon/ui/screens/water/water_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName : (_) => SplashScreen(),
        HomeScreen.routeName : (_) => HomeScreen(),
        WaterScreen.routeName : (_) => WaterScreen(),
        FishScreen.routeName : (_) => FishScreen(),
      },
    );
  }
}
