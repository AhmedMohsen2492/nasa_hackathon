import 'package:flutter/material.dart';
import 'package:nasa_hackathon/ui/utiles/app_colors.dart';

class WaterScreen extends StatefulWidget {
  static String routeName = "WaterScreen";

  @override
  State<WaterScreen> createState() => _WaterScreenState();
}

class _WaterScreenState extends State<WaterScreen> {
  @override
  Widget build(BuildContext context) {
    //var args = ModalRoute.of(context)?.settings.arguments as List<String>;
    /// args[0] = country
    /// args[1] = city
    /// Excellent - Good - Poor - Very Poor

    String source = "Large Lakes" ;
    String result = "Excellent";
    bool Drinkable = true ;
    bool Swimming = true ;

    bool isExcellent = false ;
    bool isGood = false ;
    bool isPoor = false ;
    bool isVeryPoor = false ;
    bool isDrinkable = false ;
    bool isSwimming = false ;
    if(Drinkable)
      isDrinkable = true ;
    else
      isDrinkable = false ;
    if(Swimming)
      isSwimming = true ;
    else
      isSwimming = false ;
    if(result == "Excellent")
      isExcellent = true ;
    else if (result == "Good")
      isGood = true ;
    else if (result == "Poor")
      isPoor = true ;
    else
      isVeryPoor = true ;

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
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Water Source :",
                      style: TextStyle(
                        color: Colors.white,
                        decorationColor: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 15,),
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        //margin: EdgeInsets.symmetric(horizontal: width * 0.1),
                        padding: EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          textAlign: TextAlign.center,
                          "$source",
                          style: TextStyle(
                              color: Colors.purple,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Water Quality :",
                  style: TextStyle(
                    color: Colors.white,
                    decorationColor: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.symmetric(vertical: 12),
                            decoration: BoxDecoration(
                              color: isExcellent ? Colors.green : Colors.white,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Text(
                              textAlign: TextAlign.center,
                              "Excellent",
                              style: TextStyle(
                                  color: isExcellent ? Colors.white : Colors.indigo,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 18,
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.symmetric(vertical: 12),
                            decoration: BoxDecoration(
                              color: isGood ? Colors.green : Colors.white,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Text(
                              textAlign: TextAlign.center,
                              "Good",
                              style: TextStyle(
                                  color: isGood ? Colors.white : Colors.indigo,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.symmetric(vertical: 12),
                            decoration: BoxDecoration(
                              color: isPoor ? Colors.green : Colors.white,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Text(
                              textAlign: TextAlign.center,
                              "Poor",
                              style: TextStyle(
                                  color: isPoor ? Colors.white : Colors.indigo,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 18,
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.symmetric(vertical: 12),
                            decoration: BoxDecoration(
                              color: isVeryPoor ? Colors.green : Colors.white,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Text(
                              textAlign: TextAlign.center,
                              "Very Poor",
                              style: TextStyle(
                                  color: isVeryPoor ? Colors.white : Colors.indigo,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  "Suitability for Drinking :",
                  style: TextStyle(
                    color: Colors.white,
                    decorationColor: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(
                          color: isDrinkable ? Colors.green : Colors.white,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Text(
                          textAlign: TextAlign.center,
                          "YES",
                          style: TextStyle(
                              color: isDrinkable ? Colors.white : Colors.indigo,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 18,
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(
                          color: !isDrinkable ? Colors.green : Colors.white,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Text(
                          textAlign: TextAlign.center,
                          "NO",
                          style: TextStyle(
                              color: !isDrinkable ? Colors.white : Colors.indigo,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  "Suitability for Swimming :",
                  style: TextStyle(
                    color: Colors.white,
                    decorationColor: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        //margin: EdgeInsets.symmetric(horizontal: width * 0.1),
                        padding: EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(
                          color: isSwimming ? Colors.green : Colors.white,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Text(
                          textAlign: TextAlign.center,
                          "YES",
                          style: TextStyle(
                              color: isSwimming ? Colors.white : Colors.indigo,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 18,
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(
                          color: !isSwimming ? Colors.green : Colors.white,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Text(
                          textAlign: TextAlign.center,
                          "NO",
                          style: TextStyle(
                              color: !isSwimming ? Colors.white : Colors.indigo,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }


}
