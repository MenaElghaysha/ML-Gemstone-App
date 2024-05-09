import 'dart:convert';
import 'package:http/http.dart' as http;

Future<String?> postData({
  required String carat,
  required String dropdownCut,
  required String dropdownColor,
  required String dropdownClarity,
  required String depth,
  required String table,
  required String xDimension,
  required String yDimension,
  required String zDimension,
}) async {
  var uri = Uri.parse("https://mega.us-east-1.modelbit.com/v1/predictedd/latest");
  var headers = {"Content-type": "application/json"};
  var jsonString = json.encode({
    "data": [
      carat,
      dropdownCut,
      dropdownColor,
      dropdownClarity,
      depth,
      table,
      xDimension,
      yDimension,
      zDimension
    ]
  });
  try {
    var response = await http.post(uri, headers: headers, body: jsonString);
    if (response.statusCode == 200) {
      var jsonResponse = json.decode(response.body);
      var predictedPrice = jsonResponse["data"][0];
      return predictedPrice.toString();
    } else if (response.statusCode == 404) {
      return "Error 404: Resource not found";
    } else {
      return "Error ${response.statusCode}: Something went wrong";
    }
  } catch (e) {
    return "Exception occurred: $e";
  }
}
