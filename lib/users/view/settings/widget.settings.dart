import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hygeia/users/view/drawer/widget.drawer.dart';
import 'package:hygeia/users/view/settings/widget.changepassword.dart';
import 'package:sizer/sizer.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  TextEditingController OldPasswordController;
  TextEditingController NewPasswordController;
  TextEditingController NewPasswordConfirmController;
  GlobalKey<FormState> _formKey;
  @override
  void initState() {
    super.initState();
    OldPasswordController = new TextEditingController();
    NewPasswordController = new TextEditingController();
    _formKey = GlobalKey<FormState>();
    NewPasswordConfirmController = new TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    TextEditingController emailControlleur;

    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xffF3F5F4),
      appBar: AppBar(
        backgroundColor: Color(0xFF3A7AFE),
        title: Text('Paramètres',
            style:
                GoogleFonts.inter(fontSize: 21, fontWeight: FontWeight.w500)),
        centerTitle: true,
      ),
      drawer: NavigationDrawer('parametre'),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 4.w),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 4.w),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ChangePassword()));
                },
                dense: true,
                trailing: Icon(Icons.arrow_forward_rounded),
                leading: Icon(Icons.password),
                title: Text(
                  'Changer mot de passe',
                  style: GoogleFonts.poppins(
                      fontSize: 12.sp, fontWeight: FontWeight.w600),
                ),
              ),
            )
          ],
        ),
      ),
      resizeToAvoidBottomInset: false,
    ));
  }
}
