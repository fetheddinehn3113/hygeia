import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hygeia/users/data/const/const.signup.dart';
import 'package:hygeia/users/view/Home/widget.home.dart';
import 'package:hygeia/users/view/drawer/widget.drawer.dart';
import 'package:sizer/sizer.dart';

class rvous extends StatefulWidget {
  const rvous({Key key}) : super(key: key);

  @override
  _rvousState createState() => _rvousState();
}

class _rvousState extends State<rvous> {
  TextEditingController medecinControlleur;
  TextEditingController dateControlleur;
  TextEditingController typeControlleur;
  TextEditingController casDerendezVousControlleur;
  void initState() {
    medecinControlleur = TextEditingController();
    dateControlleur = TextEditingController();
    typeControlleur = TextEditingController();
    casDerendezVousControlleur = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: NavigationDrawer("rvous"),
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 1.h),
            child: Column(
              children: [
                MyStack("doct.jpg", "Merabet", "mer 14/05/2020", "personel", 0,
                    () => onpresscard()),
                MyStack("doct.jpg", "Merabet", "mer 14/05/2020", "personel", 1,
                    () => onpresscard()),
                MyStack("doct.jpg", "Merabet", "mer 14/05/2020", "personel", 2,
                    () => onpresscard()),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => onpressedfloatbutton(),
          backgroundColor: Color(0xff01559C),
          child: Padding(
            padding: EdgeInsets.only(top: 0.15.h),
            child: Icon(
              Icons.filter_alt,
              size: 30,
            ),
          ),
        ),
      ),
    );
  }

  onpresscard() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            color: Color(0xff737373),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                  )),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 10.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Votre rendez-vsous",
                      style: GoogleFonts.inter(
                          fontSize: 25, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Text(
                      "Ce rendez-vous pour vois \nl'avancement de votre cas ,\nnoubliez pas votre bavette",
                      style: GoogleFonts.poppins(
                          fontSize: 15, color: Color(0xff707070)),
                    ),
                    SizedBox(height: 4.h),
                    Row(
                      children: [
                        SvgPicture.asset(
                          "assets/icons/rendezv.svg",
                          color: Colors.black,
                          height: 4.h,
                          width: 4.w,
                        ),
                        SizedBox(width: 6.w),
                        Text(
                          "14/9/2021",
                          style: GoogleFonts.inter(
                              fontSize: 17, fontWeight: FontWeight.normal),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          "assets/icons/sermed.svg",
                          color: Colors.black,
                          height: 2.8.h,
                          width: 2.8.w,
                        ),
                        SizedBox(width: 9.w),
                        Text(
                          "Dr Merabet",
                          style: GoogleFonts.inter(
                              fontSize: 17, fontWeight: FontWeight.normal),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          "assets/icons/accetblack.svg",
                          height: 2.8.h,
                          width: 2.8.w,
                        ),
                        SizedBox(width: 9.w),
                        Text(
                          "accepté",
                          style: GoogleFonts.inter(
                              fontSize: 17, fontWeight: FontWeight.normal),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                            child: Container(
                          width: 35.w,
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
                            color: Color(0xffFF002B),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                              child: Text(
                            'Supprimer',
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 13.4.sp,
                                fontWeight: FontWeight.w500),
                          )),
                        )),
                        SizedBox(
                          width: 5.w,
                        ),
                        InkWell(
                            child: Container(
                          width: 35.w,
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
                            color: Color(0xffF7DB4C),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                              child: Text(
                            'Modifier',
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 13.4.sp,
                                fontWeight: FontWeight.w500),
                          )),
                        )),
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }

  void onpressedfloatbutton() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            color: Color(0xff737373),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                  )),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 10.w),
                child: Column(
                  children: [
                    Text(
                      'Filtrer votre recherche',
                      style: GoogleFonts.inter(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: 2.h),
                    TextFormField(
                      readOnly: true,
                      controller: medecinControlleur,
                      style: GoogleFonts.poppins(
                        color: Color.fromRGBO(21, 32, 43, 0.7),
                        fontSize: 15,
                      ),
                      decoration: InputDecoration(
                        hintStyle: GoogleFonts.poppins(
                          color: Color.fromRGBO(21, 32, 43, 0.7),
                          fontSize: 15,
                        ),
                        alignLabelWithHint: true,
                        hintText: "Médecin",
                        contentPadding: EdgeInsets.only(top: 22),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(61, 199, 201, 1)),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(61, 199, 201, 1)),
                        ),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(61, 199, 201, 1)),
                        ),
                        errorBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(61, 199, 201, 1)),
                        ),
                        focusedErrorBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(61, 199, 201, 1)),
                        ),
                        suffixIcon: PopupMenuButton<String>(
                          icon: Align(
                              alignment: Alignment.bottomCenter,
                              child: Icon(Icons.arrow_drop_down,
                                  color: Color.fromRGBO(58, 122, 254, 1)
                                      .withOpacity(0.8))),
                          onSelected: (String value) {
                            setState(() {
                              medecinControlleur.text = value;
                            });
                          },
                          itemBuilder: (BuildContext context) {
                            return medecins
                                .map<PopupMenuItem<String>>((String value) {
                              return new PopupMenuItem(
                                  child: new Text(value), value: value);
                            }).toList();
                          },
                        ),
                      ),
                    ),
                    SizedBox(height: 2.h),
                    TextFormField(
                        style: GoogleFonts.poppins(
                          color: Color.fromRGBO(21, 32, 43, 0.7),
                          fontSize: 15,
                        ),
                        onTap: () {
                          DatePicker.showDatePicker(context,
                              showTitleActions: true,
                              minTime: DateTime(2000, 1, 1),
                              maxTime: DateTime(2019, 6, 7), onChanged: (date) {
                            print('change $date');
                          }, onConfirm: (date) {
                            dateControlleur.text = date.year.toString() +
                                "/" +
                                date.month.toString() +
                                "/" +
                                date.day.toString();
                            print('confirm $date');
                          },
                              currentTime: DateTime.now(),
                              locale: LocaleType.fr);
                        },
                        readOnly: true,
                        controller: dateControlleur,
                        onChanged: (value) {},
                        decoration: InputDecoration(
                          hintStyle: GoogleFonts.poppins(
                            color: Color.fromRGBO(21, 32, 43, 0.7),
                            fontSize: 15,
                          ),
                          alignLabelWithHint: true,
                          hintText: "Date de rendez-vous",
                          contentPadding: EdgeInsets.only(top: 22),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(61, 199, 201, 1)),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(61, 199, 201, 1)),
                          ),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(61, 199, 201, 1)),
                          ),
                          errorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(61, 199, 201, 1)),
                          ),
                          focusedErrorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(61, 199, 201, 1)),
                          ),
                        )),
                    SizedBox(height: 2.h),
                    TextFormField(
                      readOnly: true,
                      controller: typeControlleur,
                      style: GoogleFonts.poppins(
                        color: Color.fromRGBO(21, 32, 43, 0.7),
                        fontSize: 15,
                      ),
                      decoration: InputDecoration(
                        hintStyle: GoogleFonts.poppins(
                          color: Color.fromRGBO(21, 32, 43, 0.7),
                          fontSize: 15,
                        ),
                        alignLabelWithHint: true,
                        hintText: "Type",
                        contentPadding: EdgeInsets.only(top: 22),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(61, 199, 201, 1)),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(61, 199, 201, 1)),
                        ),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(61, 199, 201, 1)),
                        ),
                        errorBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(61, 199, 201, 1)),
                        ),
                        focusedErrorBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(61, 199, 201, 1)),
                        ),
                        suffixIcon: PopupMenuButton<String>(
                          icon: Align(
                              alignment: Alignment.bottomCenter,
                              child: Icon(Icons.arrow_drop_down,
                                  color: Color.fromRGBO(58, 122, 254, 1)
                                      .withOpacity(0.8))),
                          onSelected: (String value) {
                            setState(() {
                              typeControlleur.text = value;
                            });
                          },
                          itemBuilder: (BuildContext context) {
                            return type
                                .map<PopupMenuItem<String>>((String value) {
                              return new PopupMenuItem(
                                  child: new Text(value), value: value);
                            }).toList();
                          },
                        ),
                      ),
                    ),
                    SizedBox(height: 2.h),
                    TextFormField(
                      readOnly: true,
                      controller: casDerendezVousControlleur,
                      style: GoogleFonts.poppins(
                        color: Color.fromRGBO(21, 32, 43, 0.7),
                        fontSize: 15,
                      ),
                      decoration: InputDecoration(
                        hintStyle: GoogleFonts.poppins(
                          color: Color.fromRGBO(21, 32, 43, 0.7),
                          fontSize: 15,
                        ),
                        alignLabelWithHint: true,
                        hintText: "Cas de rendez-vous",
                        contentPadding: EdgeInsets.only(top: 22),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(61, 199, 201, 1)),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(61, 199, 201, 1)),
                        ),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(61, 199, 201, 1)),
                        ),
                        errorBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(61, 199, 201, 1)),
                        ),
                        focusedErrorBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(61, 199, 201, 1)),
                        ),
                        suffixIcon: PopupMenuButton<String>(
                          icon: Align(
                              alignment: Alignment.bottomCenter,
                              child: Icon(Icons.arrow_drop_down,
                                  color: Color.fromRGBO(58, 122, 254, 1)
                                      .withOpacity(0.8))),
                          onSelected: (String value) {
                            setState(() {
                              typeControlleur.text = value;
                            });
                          },
                          itemBuilder: (BuildContext context) {
                            return cas
                                .map<PopupMenuItem<String>>((String value) {
                              return new PopupMenuItem(
                                  child: new Text(value), value: value);
                            }).toList();
                          },
                        ),
                      ),
                    ),
                    SizedBox(height: 5.h),
                    InkWell(
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
                        'rechercher',
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 13.4.sp,
                            fontWeight: FontWeight.w500),
                      )),
                    )),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
