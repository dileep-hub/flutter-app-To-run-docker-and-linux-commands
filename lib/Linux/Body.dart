import 'package:flutter/material.dart';
import 'const.dart';
import 'Web.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  Web web = Web();
  String cmd;
  String webOutput = '';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: TextField(
                  onChanged: (value) {
                    cmd = value;
                  },
                  style: kInputTextStyle,
                  textAlign: TextAlign.center,
                  decoration: kTextFieldDeco,
                ),
              ),
              TextButton(
                onPressed: () async {
                  // print(cmd);
                  webOutput = await web.getWeb(cmd: cmd);
                  setState(() {});
                },
                child: Container(
                  width: 70,
                  child: Text(
                    "Run",
                    style: kButtonTextStyle,
                    textAlign: TextAlign.center,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "OutPut :",
          style: kOutPutHeadingStyle,
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.only(top: 10),
            child: Text(
              webOutput.toString(),
              textAlign: TextAlign.center,
              style: kOutPutBodyStyle,
            ),
            width: double.infinity,
            height: 180,
            decoration: BoxDecoration(
              color: Colors.blue[200],
              border: Border.all(
                width: 2,
                color: Colors.black,
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
