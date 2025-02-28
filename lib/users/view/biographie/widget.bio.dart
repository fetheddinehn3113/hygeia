import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hygeia/users/data/const/const.signup.dart';
import 'package:hygeia/users/view/drawer/widget.drawer.dart';
import 'package:sizer/sizer.dart';

class Biographie extends StatelessWidget {
  const Biographie({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List jrt = ["dim", "lun", "mar", "mer"];
    return SafeArea(
        child: Scaffold(
      drawer: NavigationDrawer("bio"),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text('Biographie',
            style: GoogleFonts.inter(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.w500)),
        centerTitle: true,
        backgroundColor: Color(0xFF3A7AFE),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 4.w),
          child: Column(
            children: [
              Biomed("doct.jpg", "Dr Merabet", "z.merabet@esi-sba.dz",
                  "Généraliste", jrt),
            ],
          ),
        ),
      ),
    ));
  }
}

class Biomed extends StatelessWidget {
  Biomed(this.assets, this.nom, this.email, this.spec, this.jourDeTravail);
  String assets;
  String nom;
  String email;
  String spec;
  List jourDeTravail;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0x253DC7C9),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 5.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0x773DC7C9),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/" + assets),
                  maxRadius: 7.5.h,
                  minRadius: 7.5.h,
                ),
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            Text(
              nom,
              style:
                  GoogleFonts.inter(fontSize: 23, fontWeight: FontWeight.w700),
            ),
            Text(
              email,
              style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Color(0xff707070)),
            ),
            SizedBox(height: 1.h),
            Text(
              spec,
              style: GoogleFonts.poppins(
                  fontSize: 19,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff3A7AFE)),
            ),
            SizedBox(height: 1.h),
            Container(
              padding: EdgeInsets.all(5),
              alignment: Alignment.center,
              height: 5.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0x68FFFFFF),
                borderRadius: BorderRadius.circular(6),
              ),
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: semaine
                    .map((jour) => Mytext(jour, jourDeTravail.contains(jour)))
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Mytext extends StatelessWidget {
  String jour;
  bool existe;

  Mytext(this.jour, this.existe);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 2.w),
      child: Container(
        alignment: Alignment.center,
        child: Text(
          jour,
          style: GoogleFonts.poppins(
            color: existe == true ? Colors.black : Color(0x30707070),
          ),
        ),
      ),
    );
  }
}
