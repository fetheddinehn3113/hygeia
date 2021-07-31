import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hygeia/users/view/drawer/widget.drawer.dart';
import 'package:sizer/sizer.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xffF3F5F4),
      drawer: NavigationDrawer("home"),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text('Home',
            style: GoogleFonts.inter(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.w500)),
        centerTitle: true,
        backgroundColor: Color(0xffF3F5F4),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.5.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 3.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Salut Fetheddine',
                          style: GoogleFonts.inter(
                              fontSize: 23, fontWeight: FontWeight.bold)),
                      Text('bienvenue sur hygeia',
                          style: GoogleFonts.poppins(
                              color: Color(0xff707070),
                              fontSize: 15,
                              fontWeight: FontWeight.normal))
                    ],
                  ),
                  InkWell(
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 4,
                                offset:
                                    Offset(0, 0), // changes position of shadow
                              ),
                            ],
                          ),
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/images/homme.jpg"),
                            maxRadius: 3.h,
                            minRadius: 3.h,
                          ),
                        ),
                        Positioned(
                          top: 0.02.h,
                          right: 0.02.w,
                          child: Container(
                            height: 1.5.h,
                            width: 1.5.h,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.circle,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Consulter vos :',
                        style: GoogleFonts.inter(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 3.h),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(1.h),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 4,
                                offset:
                                    Offset(0, 0), // changes position of shadow
                              ),
                            ],
                            color: Color(0xff3A7AFE)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.w, vertical: 3.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "- ordonnance",
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              SizedBox(height: 1.h),
                              Text(
                                "- bilans",
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              SizedBox(height: 1.h),
                              Text(
                                "- orientation",
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                      bottom: 0,
                      right: 10.w,
                      child: Image.asset("assets/images/docteur.png")),
                ],
              ),
              SizedBox(
                height: 3.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'vos rendez-vous :',
                    style: GoogleFonts.inter(
                        fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  InkWell(
                    child: Text(
                      'tous',
                      style: GoogleFonts.poppins(
                          color: Color(0xff707070),
                          fontSize: 17,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 3.h,
              ),
              MyStack("homme.jpg", "Merabet", "mer 14/05/2020", "personel"),
            ],
          ),
        ),
      ),
    ));
  }
}

class MyStack extends StatelessWidget {
  MyStack(this.ImageAsset, this.Doctor, this.date, this.genre);
  String ImageAsset;
  String Doctor;
  String date;
  String genre;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(vertical: 1.h),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9),
                color: Color(0x153DC7C9)),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 7.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 3.h),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 15.w,
                          height: 8.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(0.5.h),
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/" + ImageAsset),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(width: 5.w),
                        Container(
                          height: 8.h,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Dr. " + Doctor,
                                  style: GoogleFonts.poppins(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500)),
                              Text(date,
                                  style: GoogleFonts.poppins(
                                      color: Color(0xff707070),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500)),
                              Text(genre,
                                  style: GoogleFonts.poppins(
                                      color: Color(0xff3A7AFE),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500)),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios_outlined)
                ],
              ),
            ))
      ],
    );
  }
}
