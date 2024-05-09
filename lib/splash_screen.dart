import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'home.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/7.jpg"),
              fit: BoxFit.fill,
              opacity: .9),
          // color: Colors.black.withOpacity(0.3), // Set the background color with opacity
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 24.0.w, top: 50.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                // width: MediaQuery.of(context).size.width - 48,
                height: MediaQuery.of(context).size.height * .5,
                padding:
                    EdgeInsets.symmetric(horizontal: 12.w, vertical: 50.h),
                child: RichText(
                  text: TextSpan(
                    text: 'Hi there,\n',
                    style: TextStyle(
                      fontSize: 25.sp,
                      fontWeight: FontWeight.bold,
                      // height: 1.5.r,
                      color: Colors.white,
                      // fontStyle: FontStyle.italic,
                      // shadows: const [
                      //   // Shadow(
                      //   //   color: Colors.black,      // Choose the color of the shadow
                      //   //   blurRadius: 2.0,          // Adjust the blur radius for the shadow effect
                      //   //   offset: Offset(2.0, 2.0), // Set the horizontal and vertical offset for the shadow
                      //   // ),
                      // ],
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'looking for',
                        style: TextStyle(
                          fontSize: 30.sp,
                          fontWeight: FontWeight.bold,
                          // height: 1.5.r,
                          color: Colors.deepOrangeAccent,
                          // fontStyle: FontStyle.italic,
                        ),
                      ),

                      TextSpan(
                        text: ' Gemstone?\n',
                        style: TextStyle(
                          fontSize: 25.sp,
                          fontWeight: FontWeight.bold,
                          // height: 1.5.r,
                          color: Colors.white,
                          // fontStyle: FontStyle.italic,
                        ),
                      ),
                      TextSpan(
                          text: 'You are not sure\nif a price is adequate?\n',
                          style: TextStyle(
                              height: 1.2.r,
                              fontWeight: FontWeight.w300,
                              fontStyle: FontStyle.italic,
                              fontSize: 20.sp)),
                    ],
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*.28.h,),

              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                  );

                },
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.r))),
                  backgroundColor:
                  MaterialStateProperty.all(Colors.deepOrangeAccent),
                  fixedSize: MaterialStateProperty.all(
                      Size(MediaQuery.of(context).size.width, 50.h)),
                ),
                child: Text(
                  "Get Started",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
