import 'package:flutter/material.dart';

import 'package:hygeia/slides/views/widget.slide.dart';
import 'package:hygeia/users/view/Home/widget.home.dart';
import 'package:hygeia/users/view/prendredecision.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:after_layout/after_layout.dart';
import 'package:sizer/sizer.dart';
import 'package:device_preview/device_preview.dart';

void main() => runApp(
      MyApp(), // Wrap your app
    );

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        home: FirstScreen(),
      );
    });
  }
}

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key key}) : super(key: key);
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen>
    with AfterLayoutMixin<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }

  Future checkFirstSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool _connected = (prefs.getString('token') ?? false);
    if (_connected) {
      Navigator.of(context).pushReplacement(
          new MaterialPageRoute(builder: (context) => Text('home')));
      return;
    }
    bool _seen = (prefs.getBool('seen') ?? false);
    if (_seen) {
      Navigator.of(context)
          .pushReplacement(new MaterialPageRoute(builder: (context) => Home()));
    } else {
      await prefs.setBool('seen', true);
      Navigator.of(context).pushReplacement(
          new MaterialPageRoute(builder: (context) => OnboardingScreen()));
    }
  }

  @override
  void afterFirstLayout(BuildContext context) => checkFirstSeen();
}
