import 'dart:convert';
import 'package:http/http.dart' as http;

Future<String> sendDataToBackend(List<Map<String, dynamic>> tempMacVals) async {
  final response = await http.post(
    Uri.parse('http://172.20.10.6:8080/predict'),
    headers: <String, String>{
      'Content-Type': 'application/json',
    },
    body: jsonEncode(<String, dynamic>{'tempMacVals': tempMacVals}),
  );

  if (response.statusCode == 200) {
    // If the server returns a 200 OK response, parse the JSON response
    Map<String, dynamic> data = jsonDecode(response.body);
    return data['prediction'];
  } else {
    // If the server did not return a 200 OK response, throw an exception.
    throw Exception('Failed to load prediction');
  }
}
