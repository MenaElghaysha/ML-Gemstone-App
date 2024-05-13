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
        decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [
                0.1,
                0.15,
                0.9,
              ],
              colors: [
                // Colors.indigo[400]!,
                Color(0xff4173972),
                Color(0xff0e5592),
                Color(0xff81aec1),
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
                    color: Colors.deepOrangeAccent,
                  ),
                ),
                SizedBox(height: 12.h,),

                const Text(
                    "The Gemstone you are looking for is,\n"
                    "magnificent.\n"
                    "Gemstones with same conditions \nshould cost around:",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.w500)),
                SizedBox(height: 25.h,),


                Text(
                    result != null
                        ? "${double.parse(result!).toStringAsFixed(5)} \$"
                        : 'No result',
                    style: TextStyle(
                        fontWeight: FontWeight.w900, color: Colors.deepOrangeAccent,fontSize:35.sp)),

                SizedBox(height: 12.h,),

                Expanded(child:
                  Container(
                    height: 150.h,
                    child:Image.asset("assets/images/12.png",fit: BoxFit.contain,)
                  ),
                ),

                SizedBox(height: 20.h,),

                Expanded(
                  child: Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/cp.png",height: 20.h,width: 20.w),
                        Text(" Copyrights By Hogwarts",style: TextStyle(fontSize: 12.sp),textAlign: TextAlign.center,),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
