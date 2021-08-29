import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hygeia/users/data/const/const.signup.dart';
import 'package:sizer/sizer.dart';

class NouveauRendezVous extends StatefulWidget {
  const NouveauRendezVous({Key key}) : super(key: key);

  @override
  _NouveauRendezVousState createState() => _NouveauRendezVousState();
}

class _NouveauRendezVousState extends State<NouveauRendezVous> {
  TextEditingController medecinControlleur;
  TextEditingController dateControlleur;
  void initState() {
    medecinControlleur = TextEditingController(text: medecins[0]);
    dateControlleur = TextEditingController(text: 'date de rendez-vous');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xffF3F5F4),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 3.h),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(1.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(0.8.h),
                    color: Colors.blue,
                  ),
                  child: Icon(Icons.arrow_back_rounded, color: Colors.white),
                ),
                SizedBox(
                  width: 2.h,
                ),
                Text(
                  'Nouveau rendez-vous',
                  style: GoogleFonts.poppins(
                      fontSize: 21, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          Expanded(
              child: Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 3.h),
            decoration: BoxDecoration(
              color: Color(0xffE2F1F0),
              borderRadius: BorderRadius.circular(3.5.h),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Médecin :',
                      style: GoogleFonts.poppins(fontSize: 18),
                    ),
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
                    SizedBox(height: 5.h),
                    Text(
                      'Date :',
                      style: GoogleFonts.poppins(fontSize: 18),
                    ),
                    TextFormField(
                        style: GoogleFonts.poppins(
                          color: Color.fromRGBO(21, 32, 43, 0.7),
                          fontSize: 15,
                        ),
                        onTap: () {
                          DatePicker.showDatePicker(context,
                              showTitleActions: true,
                              minTime: DateTime.now(),
                              maxTime: DateTime(2025, 6, 7), onChanged: (date) {
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
                    SizedBox(height: 5.h),
                    Text(
                      'Description :',
                      style: GoogleFonts.poppins(fontSize: 18),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 1.h),
                      child: Card(
                          elevation: 0,
                          color: Colors.white,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: TextField(
                              maxLines: 13,
                              decoration: InputDecoration.collapsed(
                                  hintText: "Description"),
                            ),
                          )),
                    ),
                  ],
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
                            offset: Offset(0.0, 00),
                          ),
                        ],
                        color: Color(0xffFF002B),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                          child: Text(
                        'annuler',
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
                            offset: Offset(0.0, 0),
                          ),
                        ],
                        color: Color(0xff01559C),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                          child: Text(
                        'envoyer',
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 13.4.sp,
                            fontWeight: FontWeight.w500),
                      )),
                    )),
                  ],
                )
              ],
            ),
          )),
        ],
      ),
    ));
  }
}
