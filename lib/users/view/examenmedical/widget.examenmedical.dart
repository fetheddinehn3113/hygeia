import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hygeia/users/data/const/const.signup.dart';
import 'package:hygeia/users/view/drawer/widget.drawer.dart';
import 'package:sizer/sizer.dart';

class ExamenMedical extends StatefulWidget {
  const ExamenMedical({Key key}) : super(key: key);

  @override
  _ExamenMedicalState createState() => _ExamenMedicalState();
}

class _ExamenMedicalState extends State<ExamenMedical> {
  TextEditingController medecinControlleur;
  TextEditingController dateControlleur;
  TextEditingController typeControlleur;
  @override
  void initState() {
    medecinControlleur = TextEditingController();
    dateControlleur = TextEditingController();
    typeControlleur = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: NavigationDrawer("emedic"),
        appBar: AppBar(
          centerTitle: true,
          title: Text('Examen médicaux',
              style: GoogleFonts.inter(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500)),
          backgroundColor: Color(0xFF3A7AFE),
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
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 5.w),
            child: Column(
              children: [
                Mycard("doct.jpg", "Merabet", "mer 14/05/2020", "personel"),
                Mycard("doct.jpg", "Merabet", "mer 14/05/2020", "personel"),
                Mycard("doct.jpg", "Merabet", "mer 14/05/2020", "personel"),
                Mycard("doct.jpg", "Merabet", "mer 14/05/2020", "personel"),
                Mycard("doct.jpg", "Merabet", "mer 14/05/2020", "personel"),
                Mycard("doct.jpg", "Merabet", "mer 14/05/2020", "personel"),
              ],
            ),
          ),
        ),
      ),
    );
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
                    SizedBox(height: 3.h),
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
                    SizedBox(height: 3.h),
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
                    SizedBox(height: 3.h),
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
                        hintText: "type",
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
                    SizedBox(height: 10.h),
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

class Mycard extends StatelessWidget {
  Mycard(this.ImageAsset, this.Doctor, this.date, this.genre);
  String ImageAsset;
  String Doctor;
  String date;
  String genre;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(vertical: 1.h),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(9), color: Color(0x153DC7C9)),
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
                              image: AssetImage("assets/images/" + ImageAsset),
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
                                  fontSize: 15, fontWeight: FontWeight.w500)),
                          Text(date,
                              style: GoogleFonts.poppins(
                                  color: Color(0xff707070),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500)),
                          Text(genre,
                              style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              PopupMenuButton(itemBuilder: (BuildContext context) {
                return consultation.map<PopupMenuItem<String>>((String value) {
                  return new PopupMenuItem(child: new Text(value));
                }).toList();
              }),
            ],
          ),
        ));
  }
}
