import 'package:flutter/material.dart';
import 'package:here_sdk/core.dart';
import 'package:show_bakso/screens/login.dart';

void main() {
  SdkContext.init(IsolateOrigin.main);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SHOW BAKSO!',
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      
    );
  }
}
