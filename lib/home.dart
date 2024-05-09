// home.dart
import 'package:flutter/material.dart';
import 'package:gemstone/result_page.dart';
import 'custome_text_form_field.dart';
import 'custom_dropdown_button_form_field.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
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

  Future<void> _handlePredictButtonPressed() async {
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
    // _onBasicAlertPressed(context, resp);
    // Navigate to ResultPage and pass the response as parameter
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ResultPage(result: resp),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Gemstone")),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const ListTile(
                  title: Text(
                    "Search it now !",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('Compare the price!',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 15)),
                ),
                const Center(
                  child: Image(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/1.png"),
                    height: 200,
                    width: 250,
                  ),
                ),
                const Text(
                  "Want to Start? \n"
                  " Please input as much information below as possible,\n"
                  " so we can provide you with the best results",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                Container(
                    margin: const EdgeInsets.only(
                      left: 12,
                    ),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Input here : ",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          color: Colors.deepPurple),
                      textAlign: TextAlign.left,
                    )),
                const SizedBox(height: 24),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const Text(
                          " Carat",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        CustomTextFormField(
                          controller: caratController,
                          hintText: "type here",
                        ),
                        const SizedBox(height: 12),
                        const Text(
                          " Cut",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 8,
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
                                dropdownColor = newValue!;
                              }),
                        ),
                        const SizedBox(height: 12),
                        const Text(
                          " Color",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 8,
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
                        const SizedBox(height: 12),
                        const Text(
                          " Clarity",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 8,
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
                                dropdownColor = newValue!;
                              }),
                        ),
                        const SizedBox(height: 12),
                        const Text(
                          " Depth",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(height: 8),
                        CustomTextFormField(
                            controller: depthController, hintText: "type here"),
                        const SizedBox(height: 12),
                        const Text(
                          " Table",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(height: 8),
                        CustomTextFormField(
                            controller: tableController, hintText: "type here"),
                        const SizedBox(height: 12),
                        const Text(
                          " X Dimension",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(height: 8),
                        CustomTextFormField(
                            controller: xDimensionController,
                            hintText: "type here"),
                        const SizedBox(height: 12),
                        const Text(
                          " Y Dimension",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(height: 8),
                        CustomTextFormField(
                            controller: yDimensionController,
                            hintText: "type here"),
                        const SizedBox(height: 12),
                        const Text(
                          " Z Dimension",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(height: 8),
                        CustomTextFormField(
                            controller: zDimensionController,
                            hintText: "type here"),
                        const SizedBox(height: 24),
                        ElevatedButton(
                          onPressed: _handlePredictButtonPressed,
                          style: ElevatedButton.styleFrom(
                            side: const BorderSide(style: BorderStyle.none),
                            backgroundColor: Colors.black,
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                          ),
                          child: const Text("Predict",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w500)),
                        ),
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

  void _onBasicAlertPressed(BuildContext context, String? resp) {
    Alert(context: context, title: "Predicted price", desc: resp ?? "").show();
  }
}
