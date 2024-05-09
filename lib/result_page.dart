// result_page.dart

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResultPage extends StatelessWidget {
  final String? result;

  const ResultPage({Key? key, this.result}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Result Page'),
      // ),
      body: Container(
        height:double.infinity ,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [
                0.15,
                0.9,
              ],
              colors: [
                Colors.indigo[400]!,
                Colors.indigo[100]!,
                // Colors.white,
              ],
            )

        ),
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(top: 56.h, right: 24.w, left: 24.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // Center the children vertically
              children: [
                Text(
                  "Your Result: ",
                  style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 12.h,),
                Text(
                  "Good",
                  style: TextStyle(
                    fontSize: 50.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.lightBlue[50],
                  ),
                ),
                SizedBox(height: 12.h,),

                Text(
                    "The Gemstone you are looking for is,\n"
                    "magnificent.\n"
                    "Gemstones with same conditions \nshould cost around:",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.w500)),
                SizedBox(height: 12.h,),


                Text(
                    result != null
                        ? "${double.parse(result!).toStringAsFixed(5)} \$"
                        : 'No result',
                    style: TextStyle(
                        fontWeight: FontWeight.w400, color: Colors.lightBlue[50],)),

                SizedBox(height: 12.h,),

                Expanded(child:
                  Container(
                    // height: 200,
                    // Add any additional widgets or content here
                    child:Image.asset("assets/images/5 (1).png",fit: BoxFit.cover,)
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
