import 'package:flutter/material.dart';
import 'package:nasa_hackathon/ui/screens/home/home_screen.dart';
import 'package:nasa_hackathon/ui/utiles/app_assets.dart';
import 'package:nasa_hackathon/ui/utiles/app_colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static String routeName = "SplashScreen" ;

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds:4), () {
      Navigator.pushReplacementNamed(context, HomeScreen.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xff020024),
              Color(0xff050446),
              Color(0xff090979),
              Color(0xff0648a2),
              Color(0xff047dc5),
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height*0.32,
                width: MediaQuery.of(context).size.width*0.6,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AppAssets.splash),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Text(
                "The Acquires",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: AppColors.white,
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
