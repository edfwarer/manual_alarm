import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/testpage_main.dart';
import 'package:get/get.dart';

class TestPage extends StatefulWidget {
  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Get.offAll(TestPage_Main());
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Image.asset(
            'assets/images/alarm_logo.png',
            fit: BoxFit.none,
          ),
        ),
        CircularProgressIndicator()
      ],
    ));
  }
}
