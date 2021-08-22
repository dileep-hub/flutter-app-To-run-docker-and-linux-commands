import 'package:flutter/material.dart';

const kTextFieldDeco = InputDecoration(
  hintText: 'Enter Your Command....',
  hintStyle: TextStyle(
    color: Colors.grey,
    fontSize: 21,
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(10),
    ),
  ),
  prefixIcon: Icon(
    Icons.input,
    color: Colors.white,
  ),
);

const kInputTextStyle = TextStyle(
  fontSize: 25,
);

const kButtonTextStyle = TextStyle(
  fontSize: 30,
  color: Colors.white,
);
const kOutPutHeadingStyle = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.bold,
);
const kOutPutBodyStyle = TextStyle(
  color: Colors.black,
  fontSize: 15,
  fontWeight: FontWeight.bold,
);
