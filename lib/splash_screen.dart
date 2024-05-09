import 'package:flutter/material.dart';
import 'home.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Home()),
        ),
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/3.jpg"),
                fit: BoxFit.fill,
                opacity: .7),
            // color: Colors.black.withOpacity(0.3), // Set the background color with opacity
          ),
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width - 48,
                  child:  Text(
                    'Hi there,\n'
                        'searching for gemstone?\n'
                        'You are not sure if a price is adequate?\n'
                        'Give me some input and we find out together.',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                      height: 1,
                      color: Colors.white,
                    ),
                    softWrap: true,
                    maxLines: null,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                // ElevatedButton(
                //   onPressed: () {
                //     Navigator.push(
                //       context,
                //       MaterialPageRoute(builder: (context) => Home()),
                //     );
                //   },
                //   style: ButtonStyle(
                //     shape: MaterialStateProperty.all(RoundedRectangleBorder(
                //         borderRadius: BorderRadius.circular(15))),
                //     backgroundColor:
                //     MaterialStateProperty.all(Colors.yellow[800]),
                //     fixedSize: MaterialStateProperty.all(
                //         Size(MediaQuery.of(context).size.width, 60)),
                //   ),
                //   child: Text(
                //     "Get Started",
                //     style: TextStyle(
                //       color: Colors.white,
                //       fontSize: 20,
                //       fontWeight: FontWeight.w600,
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
