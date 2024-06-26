import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gemstone/result_page.dart';
import 'custome_text_form_field.dart';
import 'custom_dropdown_button_form_field.dart';
import 'model/api_services.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> cutList = <String>[
    'Ideal',
    'Premium',
    'Good',
    'Very Good',
    'Fair'
  ];

  List<String> clarityList = <String>[
    'IF',
    'VVS1',
    'VVS2',
    'VS1',
    'VS2',
    'SI1',
    'SI2',
    'I1',
    'I2',
    'I3'
  ];

  List<String> colorList = ['D', 'E', 'F', 'G', 'H', 'I', 'J'];

  late String dropdownCut = 'Ideal';

  late String dropdownClarity = 'IF';

  late String dropdownColor = 'D';

  final caratController = TextEditingController();
  final depthController = TextEditingController();
  final tableController = TextEditingController();
  final xDimensionController = TextEditingController();
  final yDimensionController = TextEditingController();
  final zDimensionController = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(8.w),
            child: SingleChildScrollView(

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: 25.h,),

                  RichText(
                    text: TextSpan(
                      text: '  Search it ',
                      style: TextStyle(fontSize: 28.sp,fontWeight: FontWeight.bold),
                      children: <TextSpan>[
                        TextSpan(text: 'now !\n', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.deepOrangeAccent,fontSize: 38.sp)),
                        TextSpan(text: '    Compare the price!',style: TextStyle(
                        color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 15.sp))
                      ],
                    ),
                  ),

                  SizedBox(height: 50.h,),

                  const Text(
                    "Want to Start? \n"
                        " Please input as much information below as possible,\n"
                        " so we can provide you with the best results",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                  ),
                  SizedBox(height: 30.h),

                  SizedBox(height: 16.h),
                  Container(
                    decoration: BoxDecoration(

                    ),
                    child: Padding(
                      padding: EdgeInsets.only(top: 12.w,right: 12.w,left: 12.w,bottom: MediaQuery.of(context).viewInsets.bottom),
                      child: Form(
                        key: formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            const Text(
                              " Carat",
                              style: TextStyle(fontWeight: FontWeight.w500,fontSize: 19),
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            CustomTextFormField(
                              controller: caratController,
                              prefix: "Carat",
                            ),
                            const SizedBox(height: 12),
                            const Text(
                              " Cut",
                              style: TextStyle(fontWeight: FontWeight.w500,fontSize: 19),
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: CustomDropdownFormField(
                                  items: cutList,
                                  value: null,
                                  hintText: "Choose Cut",
                                  onChanged: (String? newValue) {
                                    dropdownCut = newValue!;
                                  }),
                            ),
                            SizedBox(height: 12.h),
                            const Text(
                              " Color",
                              style: TextStyle(fontWeight: FontWeight.w500,fontSize: 19),
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: CustomDropdownFormField(
                                  items: colorList,
                                  value: null,
                                  hintText: "Choose Color",
                                  onChanged: (String? newValue) {
                                    dropdownColor = newValue!;
                                  }),
                            ),
                            SizedBox(height: 12.h),
                            const Text(
                              " Clarity",
                              style: TextStyle(fontWeight: FontWeight.w500,fontSize: 19),
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: CustomDropdownFormField(
                                  items: clarityList,
                                  value: null,
                                  hintText: "Choose Clarity",
                                  onChanged: (String? newValue) {
                                    dropdownClarity = newValue!;
                                  }),
                            ),
                            SizedBox(height: 12.h),
                            const Text(
                              " Depth",
                              style: TextStyle(fontWeight: FontWeight.w500,fontSize: 19),
                            ),
                            SizedBox(height: 8.h),
                            CustomTextFormField(
                                controller: depthController, prefix: "Depth"),
                            SizedBox(height: 12.h),
                            const Text(
                              " Table",
                              style: TextStyle(fontWeight: FontWeight.w500,fontSize: 19),
                            ),
                            SizedBox(height: 8.h),
                            CustomTextFormField(
                                controller: tableController, prefix: "Table"),
                            SizedBox(height: 12.h),
                            const Text(
                              " X Dimension",
                              style: TextStyle(fontWeight: FontWeight.w500,fontSize: 19),
                            ),
                            SizedBox(height: 8.h),
                            CustomTextFormField(
                                controller: xDimensionController,
                                prefix: "X Dimension"),
                            SizedBox(height: 12.h),
                            const Text(
                              " Y Dimension",
                              style: TextStyle(fontWeight: FontWeight.w500,fontSize: 19),
                            ),
                            SizedBox(height: 8.h),
                            CustomTextFormField(
                                controller: yDimensionController,
                                prefix: "y Dimension"),
                            SizedBox(height: 12.h),
                            const Text(
                              " Z Dimension",
                              style: TextStyle(fontWeight: FontWeight.w500,fontSize: 19),
                            ),
                            SizedBox(height: 8.h),
                            CustomTextFormField(
                                controller: zDimensionController,
                                prefix: "z Dimension"),
                            SizedBox(height: 48.h),

                            ElevatedButton(
                              onPressed: ()async{
                                if (formKey.currentState!.validate()) {
                                  var resp = await postData(
                                    carat: caratController.text,
                                    dropdownCut: dropdownCut,
                                    dropdownColor: dropdownColor,
                                    dropdownClarity: dropdownClarity,
                                    depth: depthController.text,
                                    table: tableController.text,
                                    xDimension: xDimensionController.text,
                                    yDimension: yDimensionController.text,
                                    zDimension: zDimensionController.text,
                                  );

                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ResultPage(result: resp),
                                    ),
                                  );
                                } else {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text(
                                        "Missing Values",
                                      ),
                                    ),
                                  );
                                }}
                              ,


                              style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15))),
                                backgroundColor:
                                MaterialStateProperty.all(Colors.deepOrangeAccent),
                                fixedSize: MaterialStateProperty.all(
                                    Size(MediaQuery
                                        .of(context)
                                        .size
                                        .width-48.w, 50.h)),
                              ),
                              child: const Text("Predict",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.w500)),
                            ),

                            SizedBox(height: 20.h,),


                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("assets/images/cp.png",height: 20.h,width: 20.w),
                                Text(" Copyrights By Hogwarts",style: TextStyle(fontSize: 12.sp),textAlign: TextAlign.center,),
                              ],
                            ),


                          ],
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }


}
