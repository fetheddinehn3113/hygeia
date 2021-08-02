import 'package:flutter/material.dart';
import 'package:hygeia/users/view/drawer/widget.drawer.dart';

class rvous extends StatefulWidget {
  const rvous({Key key}) : super(key: key);

  @override
  _rvousState createState() => _rvousState();
}

class _rvousState extends State<rvous> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      drawer: NavigationDrawer("rvous"),
      appBar: AppBar(),
    ));
  }
}
