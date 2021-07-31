import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hygeia/users/data/const/const.signup.dart';
import 'package:hygeia/users/view/profile/yourProfile/widget.profile.dart';
import 'package:sizer/sizer.dart';
import 'package:hygeia/users/view/auth/widget.signup.dart';

class modifierProfile extends StatefulWidget {
  @override
  _modifierProfileState createState() => _modifierProfileState();
}

class _modifierProfileState extends State<modifierProfile> {
  TextEditingController nameControlleur;
  TextEditingController lastnameControlleur;
  TextEditingController phoneConrtolleur;
  TextEditingController situationControlleur;
  TextEditingController sexControlleur;
  TextEditingController adressControlleur;
  TextEditingController wilayaControlleur;
  TextEditingController dateNaissanceControlleur;
  TextEditingController emailControlleur;
  TextEditingController groupeControlleur;
  TextEditingController roleControlleur;
  TextEditingController birthPlaceControlleur;
  TextEditingController add = TextEditingController();
  String addedtext = "";
  @override
  void initState() {
    // TODO: implement initState
    nameControlleur = TextEditingController(text: 'fetheddine');
    lastnameControlleur = TextEditingController(text: 'hanani');
    phoneConrtolleur = TextEditingController(text: '0669168140');
    situationControlleur = TextEditingController(text: 'marié');
    sexControlleur = TextEditingController(text: 'homme');
    adressControlleur = TextEditingController(text: 'les villas weam');
    wilayaControlleur = TextEditingController(text: 'Oran ( habite )');
    dateNaissanceControlleur =
        TextEditingController(text: '19/09/2000 (date de naissance)');
    emailControlleur = TextEditingController(text: "hananifatah40@gmail.com");
    groupeControlleur = TextEditingController(text: "O+");
    roleControlleur = TextEditingController(text: 'prof');
    birthPlaceControlleur =
        TextEditingController(text: 'bell abbes (lieu de naissance )');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xff3A7AFE), Color(0xff3DC7C9)])),
          child: Column(
            children: [
              SizedBox(height: 3.h),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 0, horizontal: 5.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.16),
                            spreadRadius: 1,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ], shape: BoxShape.circle, color: Color(0xff3A7DFB)),
                        child: Padding(
                          padding: EdgeInsets.all(1.w),
                          child: Icon(
                            Icons.arrow_back_rounded,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      'Modifier vos informations',
                      style: GoogleFonts.inter(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
              SizedBox(height: 3.h),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.07),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ]),
                margin: EdgeInsets.symmetric(horizontal: 10.w),
                height: 70.h,
                child: Center(
                  child: Container(
                    height: 60.h,
                    child: ListView(
                      padding: EdgeInsets.symmetric(horizontal: 5.w),
                      children: [
                        TextFormField(
                          controller: nameControlleur,
                          style: GoogleFonts.poppins(
                            color: Color.fromRGBO(21, 32, 43, 0.7),
                            fontSize: 15,
                          ),
                          decoration: deco("Nom"),
                        ),
                        SizedBox(height: 0.5.h),
                        TextFormField(
                          controller: lastnameControlleur,
                          style: GoogleFonts.poppins(
                            color: Color.fromRGBO(21, 32, 43, 0.7),
                            fontSize: 15,
                          ),
                          decoration: deco("Prénom"),
                        ),
                        SizedBox(height: 0.5.h),
                        TextFormField(
                            style: GoogleFonts.poppins(
                              color: Color.fromRGBO(21, 32, 43, 0.7),
                              fontSize: 15,
                            ),
                            onTap: () {
                              DatePicker.showDatePicker(context,
                                  showTitleActions: true,
                                  minTime: DateTime(2000, 1, 1),
                                  maxTime: DateTime(2019, 6, 7),
                                  onChanged: (date) {
                                print('change $date');
                              }, onConfirm: (date) {
                                dateNaissanceControlleur.text =
                                    date.year.toString() +
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
                            controller: dateNaissanceControlleur,
                            onChanged: (value) {},
                            decoration: InputDecoration(
                              hintStyle: GoogleFonts.poppins(
                                color: Color.fromRGBO(21, 32, 43, 0.7),
                                fontSize: 15,
                              ),
                              alignLabelWithHint: true,
                              hintText: "Date de naissance",
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
                        SizedBox(height: 0.5.h),
                        TextFormField(
                          readOnly: true,
                          controller: birthPlaceControlleur,
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
                            hintText: "Lieux de naissance",
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
                                  birthPlaceControlleur.text = value;
                                });
                              },
                              itemBuilder: (BuildContext context) {
                                return wilaya
                                    .map<PopupMenuItem<String>>((String value) {
                                  return new PopupMenuItem(
                                      child: new Text(value), value: value);
                                }).toList();
                              },
                            ),
                          ),
                        ),
                        SizedBox(height: 0.5.h),
                        TextFormField(
                          readOnly: true,
                          controller: sexControlleur,
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
                            hintText: "Sexe",
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
                                  sexControlleur.text = value;
                                });
                              },
                              itemBuilder: (BuildContext context) {
                                return sexes
                                    .map<PopupMenuItem<String>>((String value) {
                                  return new PopupMenuItem(
                                      child: new Text(value), value: value);
                                }).toList();
                              },
                            ),
                          ),
                        ),
                        SizedBox(height: 0.5.h),
                        TextFormField(
                          readOnly: true,
                          controller: wilayaControlleur,
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
                            hintText: "Wilaya (habite)",
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
                                  wilayaControlleur.text = value;
                                });
                              },
                              itemBuilder: (BuildContext context) {
                                return wilaya
                                    .map<PopupMenuItem<String>>((String value) {
                                  return new PopupMenuItem(
                                      child: new Text(value), value: value);
                                }).toList();
                              },
                            ),
                          ),
                        ),
                        SizedBox(height: 0.5.h),
                        TextFormField(
                          controller: adressControlleur,
                          style: GoogleFonts.poppins(
                            color: Color.fromRGBO(21, 32, 43, 0.7),
                            fontSize: 15,
                          ),
                          decoration: deco("Adresse"),
                        ),
                        SizedBox(height: 0.5.h),
                        TextFormField(
                          readOnly: true,
                          controller: situationControlleur,
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
                            hintText: "Situation",
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
                                  situationControlleur.text = value;
                                });
                              },
                              itemBuilder: (BuildContext context) {
                                return situations
                                    .map<PopupMenuItem<String>>((String value) {
                                  return new PopupMenuItem(
                                      child: new Text(value), value: value);
                                }).toList();
                              },
                            ),
                          ),
                        ),
                        SizedBox(height: 0.5.h),
                        TextFormField(
                          keyboardType: TextInputType.phone,
                          controller: phoneConrtolleur,
                          style: GoogleFonts.poppins(
                            color: Color.fromRGBO(21, 32, 43, 0.7),
                            fontSize: 15,
                          ),
                          decoration: deco("Numéro de télephone"),
                        ),
                        SizedBox(height: 0.5.h),
                        TextFormField(
                          readOnly: true,
                          controller: groupeControlleur,
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
                            hintText: "Groupe sanguin",
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
                                  groupeControlleur.text = value;
                                });
                              },
                              itemBuilder: (BuildContext context) {
                                return groupeSanguin
                                    .map<PopupMenuItem<String>>((String value) {
                                  return new PopupMenuItem(
                                      child: new Text(value), value: value);
                                }).toList();
                              },
                            ),
                          ),
                        ),
                        SizedBox(height: 0.5.h),
                        TextFormField(
                          readOnly: true,
                          controller: roleControlleur,
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
                            hintText: "Rôle",
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
                                  addedtext = value;
                                  roleControlleur.text = value;
                                });
                              },
                              itemBuilder: (BuildContext context) {
                                return roles
                                    .map<PopupMenuItem<String>>((String value) {
                                  return new PopupMenuItem(
                                      child: new Text(value), value: value);
                                }).toList();
                              },
                            ),
                          ),
                        ),
                        SizedBox(height: 2.h),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 3.7.h),
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
                      'Enregistrer',
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 13.4.sp,
                          fontWeight: FontWeight.w500),
                    )),
                  )),
              SizedBox(height: 3.7.h),
            ],
          ),
        ),
      ),
    ));
  }
}
