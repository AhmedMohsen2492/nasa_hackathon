import 'package:flutter/material.dart';
import 'package:nasa_hackathon/ui/screens/fish/fish_screen.dart';
import 'package:nasa_hackathon/ui/screens/water/water_screen.dart';
import 'package:nasa_hackathon/ui/utiles/app_colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static String routeName = "HomeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectedCountry = "California";
  String selectedCity = "Tofino";
  List<String> countries = ["California","Canada", "Russia", "China"];
  List<String> cities = ["Tofino", "Victtoria", "Saguenay"];

  @override
  Widget build(BuildContext context) {

    return Container(
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
      child: Scaffold(
        appBar: AppBar(
          title: Text(
              "The Acquires",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.transparent,
        ),
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 30,
              ),
              Text(
                "Select your country",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: AppColors.white,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              DropdownButtonFormField(
                items: countries.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: TextStyle(
                        color: AppColors.primary,
                      ),
                    ),
                  );
                }).toList(),
                onChanged: (newValue) {
                  selectedCountry = newValue!;
                  setState(() {});
                },
                value: selectedCountry,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10),
                  fillColor: AppColors.white,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: AppColors.primary,
                      width: 2,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: AppColors.primary,
                      width: 2,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Select your city",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: AppColors.white,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              DropdownButtonFormField(
                items: cities.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: TextStyle(
                        color: AppColors.primary,
                      ),
                    ),
                  );
                }).toList(),
                onChanged: (newValue) {
                  selectedCity = newValue!;
                  setState(() {});
                },
                value: selectedCity,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10),
                  fillColor: AppColors.white,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: AppColors.primary,
                      width: 2,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: AppColors.primary,
                      width: 2,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 70,
              ),
              ElevatedButton(
                onPressed: () {
                  waterButton();
                },
                child: Text(
                  "Water Quality",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  FishButton();
                },
                child: Text(
                  "Fish Species",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                    vertical: 15,
                  ),
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }

  void waterButton() {
    Navigator.pushNamed(
      context,
      WaterScreen.routeName,
      arguments: [selectedCountry,selectedCity] ,
    );
  }

  void FishButton() {
    Navigator.pushNamed(
        context,
        FishScreen.routeName,
      arguments: [selectedCountry,selectedCity] ,
    );
  }
}
