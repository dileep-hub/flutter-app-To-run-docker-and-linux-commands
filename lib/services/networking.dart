import 'package:http/http.dart' as httpSuhag;
import 'dart:convert';

class NetworkHelper {
  final Uri url;
  NetworkHelper(this.url);
  Future getData_01() async {
    httpSuhag.Response response = await httpSuhag.get(url);
    String data = response.body;
    print(response.statusCode);
    //print(data);
    var decodedData = jsonDecode(data);
    // print(decodedData['coord']['lon']);
    // print(decodedData['weather'][0]["description"]);

    return decodedData;
  }
}
