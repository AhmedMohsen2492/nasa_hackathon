import 'package:flutter/material.dart';
import 'package:nasa_hackathon/ui/utiles/app_colors.dart';

class FishScreen extends StatefulWidget {
  static String routeName = "FishScreen" ;

  @override
  State<FishScreen> createState() => _FishScreenState();
}

class _FishScreenState extends State<FishScreen> {
  @override
  Widget build(BuildContext context) {

    var args = ModalRoute.of(context)?.settings.arguments as List<String>;
    // args[0] = country
    // args[1] = city

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
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "Some of the  fish species found in California :",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20,),
                Text(
                    '''Striped Bass 🐟
Chinook Salmon 🐟
Lingcod 🐟
Steelhead Trout 🐟''',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20,),
                Text(
                  "How to treat with this fish ??",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20,),
                Text(
                  '''- Always use appropriate tackle that allows stripers to be brought in quickly.

-When fishing with plugs and lures, consider removing one or two sets of treble hooks or replacing them with single hooks. 

-Use single, barbless hooks whenever possible to ease hook removal and reduce tissue damage and handling stress.

-When fishing with natural or live bait, use non-offset circle hooks to minimize gut hooking.

-When using “snag and drop” techniques to snag live bait on treble hooks, transfer and swim baits on a single circle-hook rig.

-When you feel a strike, set the hook quickly to prevent the fish from taking the hook deep where it may cause organ damage and be difficult to remove.

-Once a fish is hooked, land it quickly rather than playing it to exhaustion. ''',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
