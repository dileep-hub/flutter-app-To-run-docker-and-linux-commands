import 'package:http/http.dart' as httpSuhag;

//http://192.168.255.61/cgi-bin/Task11.py?x=date

class Web {
  String cmd;
  Future getWeb({cmd}) async {
    var url = Uri.http(
      "192.168.99.104",
      "/cgi-bin/Task11.py",
      {
        "x": cmd,
      },
    );
    var response = await httpSuhag.get(url);
    return response.body;
  }
}
