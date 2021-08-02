import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hygeia/users/view/profile/yourProfile/widget.modifierporfil.dart';
import 'package:sizer/sizer.dart';
import 'package:device_preview/device_preview.dart';
import 'package:hygeia/users/view/drawer/widget.drawer.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: NavigationDrawer("profil"),
        appBar: AppBar(
          backgroundColor: Color(0xFF3A7AFE),
          title: Text('Profil',
              style:
                  GoogleFonts.inter(fontSize: 21, fontWeight: FontWeight.w500)),
          centerTitle: true,
          elevation: 05,
        ),
        body: Container(
          height: 100.h,
          width: 100.w,
          child: Stack(children: [
            Container(
                decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/backprofil.png"),
                  fit: BoxFit.fitWidth),
            )),
            Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 3.h,
                  ),
                  Container(
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage("assets/images/homme.jpg"),
                              maxRadius: 7.5.h,
                              minRadius: 7.5.h,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 1.h,
                          right: 1.w,
                          child: InkWell(
                            child: Container(
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 1,
                                    blurRadius: 4,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                                color: Color(0xff01559C),
                                shape: BoxShape.circle,
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(1.h),
                                child: Icon(Icons.edit, color: Colors.white),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    "HANANI fetheddine",
                    style: GoogleFonts.inter(
                        fontSize: 30, fontWeight: FontWeight.w500),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color(0xffF3F5F4),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 0.5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ]),
                    margin:
                        EdgeInsets.symmetric(vertical: 4.h, horizontal: 10.w),
                    padding:
                        EdgeInsets.symmetric(vertical: 1.h, horizontal: 7.w),
                    height: 40.h,
                    child: ListView(children: [
                      informations(
                          icon: Icons.email, info: 'f.hanani@esi-sba.dz'),
                      informations(
                          icon: Icons.person, info: 'hanani fetheddine'),
                      informations(icon: Icons.event, info: '19/09/2000'),
                      informations(icon: Icons.place, info: 'Oran'),
                      informations(icon: Icons.phone, info: '0669268140'),
                      informations(
                          icon: Icons.home_repair_service, info: 'prof'),
                      informations(icon: Icons.accessibility, info: 'homme'),
                      informations(
                          icon: Icons.bloodtype, info: 'O+', last: true),
                    ]),
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => modifierProfile()));
                      },
                      child: Container(
                        width: 45.w,
                        height: 6.5.h,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.16),
                              blurRadius: 10,
                              spreadRadius: 1,
                              offset: Offset(0.0, 10),
                            ),
                          ],
                          color: Color(0xff01559C),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                            child: Text(
                          'modifier',
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 13.4.sp,
                              fontWeight: FontWeight.w500),
                        )),
                      )),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class informations extends StatelessWidget {
  informations({this.icon, this.info, this.last});
  final IconData icon;
  final String info;
  final bool last;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: last != true
          ? EdgeInsets.only(top: 2.h)
          : EdgeInsets.symmetric(vertical: 2.h),
      child: Row(
        children: [
          Icon(icon, size: 25),
          SizedBox(
            width: 7.w,
          ),
          Text(
            info,
            style: GoogleFonts.poppins(
              fontSize: 17,
            ),
          )
        ],
      ),
    );
  }
}
