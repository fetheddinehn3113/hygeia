import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class prendreDecision extends StatefulWidget {
  const prendreDecision({Key key}) : super(key: key);

  @override
  _prendreDecisionState createState() => _prendreDecisionState();
}

class _prendreDecisionState extends State<prendreDecision> {
  String cas = 'cas8m';
  int _valueDecision = 0;
  int _valueDate = 0;
  var _valuecheck = false;

  @override
  void initState() {
    //fonction jib le cas ta3 le rendez vous
    //cas = le cas ta3 le rendez-vous
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
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
                  'Prendre une décision',
                  style: GoogleFonts.poppins(
                      fontSize: 21, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          Expanded(
              child: Container(
            padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 3.h),
            decoration: BoxDecoration(
              color: Color(0xffE2F1F0),
              borderRadius: BorderRadius.circular(3.5.h),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: Builder(builder: (BuildContext context) {
                  switch (cas) {
                    case 'cas1p':
                      return cas1pou7m();
                    case 'cas4p':
                      return cas4pou8pou4mou9m();
                    case 'cas8p':
                      return cas4pou8pou4mou9m();
                    case 'cas1m':
                      return cas1m();
                    case 'cas4m':
                      return cas4pou8pou4mou9m();
                    case 'cas9m':
                      return cas4pou8pou4mou9m();
                    case 'cas7m':
                      return cas1pou7m();
                    case 'cas8m':
                      return cas8m();
                    default:
                      return SizedBox();
                  }
                })),
                InkWell(
                    onTap: () {},
                    child: Container(
                      margin: EdgeInsets.only(top: 1.h),
                      padding:
                          EdgeInsets.symmetric(horizontal: 10.w, vertical: 2.h),
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
                      child: Text(
                        'envoyer',
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 13.4.sp,
                            fontWeight: FontWeight.w500),
                      ),
                    ))
              ],
            ),
          )),
        ],
      ),
    ));
  }

  ListView cas1pou7m() {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        RichText(
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(
                  text: 'Aide : ',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600, color: Colors.black)),
              TextSpan(
                text:
                    "D'apres l'état de votre rendez-vous , vous pouvez attendre la répense du médecin ( ne prendre aucune décision ) \nou l'annuler.",
                style: GoogleFonts.poppins(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              )
            ],
          ),
        ),
        SizedBox(height: 2.h),
        ListTile(
          title: Text(
            'Annuler le rendez-vous',
            style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
          ),
          leading: Radio(
            activeColor: Colors.blue,
            value: 0,
            groupValue: _valueDecision,
            onChanged: (value) {
              setState(() {
                _valueDecision = value;
              });
            },
          ),
        ),
        SizedBox(height: 3.h),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                          hintText: "Pourquoi vous avez pris cette décision ?"),
                    ),
                  )),
            ),
          ],
        ),
      ],
    );
  }

  ListView cas4pou8pou4mou9m() {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        RichText(
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(
                  text: 'Aide : ',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600, color: Colors.black)),
              TextSpan(
                text:
                    " votre rendez-vous est en état validé ,\n ne prend pas une décision sauf si vous voulez l'annuler .",
                style: GoogleFonts.poppins(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              )
            ],
          ),
        ),
        SizedBox(height: 2.h),
        RichText(
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(
                  text: 'Attention : ',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600, color: Colors.red)),
              TextSpan(
                  text:
                      ' si vous voulez annuler un rendez-vous en état validée vous devez envoyer une explication avec des arguments solides.',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  )),
            ],
          ),
        ),
        SizedBox(height: 2.h),
        ListTile(
          title: Text(
            'Annuler le rendez-vous',
            style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
          ),
          leading: Radio(
            activeColor: Colors.blue,
            value: 0,
            groupValue: _valueDecision,
            onChanged: (value) {
              setState(() {
                _valueDecision = value;
              });
            },
          ),
        ),
        SizedBox(height: 3.h),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                          hintText: "Pourquoi vous avez pris cette décision ?"),
                    ),
                  )),
            ),
          ],
        ),
      ],
    );
  }

  ListView cas7p() {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        RichText(
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(
                  text: 'Aide : ',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600, color: Colors.black)),
              TextSpan(
                text:
                    "la date que vous avez proposé dans votre demande de rendez-vous ...... , il a vous envoyé une ou liste des dates , "
                    "vous pouvez soit choisir l un de ces date ou annuler le rendez vous.",
                style: GoogleFonts.poppins(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              )
            ],
          ),
        ),
        SizedBox(height: 2.h),
        ListTile(
          title: Text(
            'Choisir une date',
            style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
          ),
          leading: Radio(
            activeColor: Colors.blue,
            value: 0,
            groupValue: _valueDecision,
            onChanged: (value) {
              setState(() {
                _valueDecision = value;
              });
            },
          ),
        ),
        _valueDecision == 0
            ? Padding(
                padding: EdgeInsets.only(left: 10.w),
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        '15/06/2021',
                        style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
                      ),
                      leading: Radio(
                        activeColor: Colors.blue,
                        value: 0,
                        groupValue: _valueDate,
                        onChanged: (value) {
                          setState(() {
                            _valueDate = value;
                          });
                        },
                      ),
                    ),
                    ListTile(
                      title: Text(
                        '18/06/2021',
                        style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
                      ),
                      leading: Radio(
                        activeColor: Colors.blue,
                        value: 1,
                        groupValue: _valueDate,
                        onChanged: (value) {
                          setState(() {
                            _valueDate = value;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              )
            : SizedBox(),
        ListTile(
          title: Text(
            'Annuler le rendez-vous',
            style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
          ),
          leading: Radio(
            activeColor: Colors.blue,
            value: 1,
            groupValue: _valueDecision,
            onChanged: (value) {
              setState(() {
                _valueDecision = value;
              });
            },
          ),
        ),
        SizedBox(height: 3.h),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _valueDecision != 1
                ? Row(children: [
                    Checkbox(
                        value: _valuecheck,
                        onChanged: (bool value) {
                          setState(() {
                            _valuecheck = value;
                          });
                        }),
                    Text(
                      'Ajouter une explication',
                      style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
                    ),
                  ])
                : SizedBox(),
            _valuecheck == true || _valueDecision == 1
                ? Padding(
                    padding: EdgeInsets.symmetric(vertical: 1.h),
                    child: Card(
                        elevation: 0,
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: TextField(
                            maxLines: 13,
                            decoration: InputDecoration.collapsed(
                                hintText:
                                    "Pourquoi vous avez pris cette décision ?"),
                          ),
                        )),
                  )
                : SizedBox(),
          ],
        ),
      ],
    );
  }

  ListView cas1m() {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        RichText(
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(
                  text: 'Aide : ',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600, color: Colors.black)),
              TextSpan(
                text:
                    "le médecin attentd votre repense sur le demande de rendez-vous. vous pouvez soit valider le rendez-vous par l'accepter,"
                    " soit l'annuler soit , soit demander une autre date.",
                style: GoogleFonts.poppins(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              )
            ],
          ),
        ),
        SizedBox(height: 2.h),
        RichText(
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(
                  text: 'Attention : ',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600, color: Colors.red)),
              TextSpan(
                  text:
                      ' si vous voulez annuler ce rendez-vous , vous devez envoyer une explication avec des arguments solides.',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  )),
            ],
          ),
        ),
        SizedBox(height: 2.h),
        ListTile(
          title: Text(
            'Valider le rendez-vous',
            style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
          ),
          leading: Radio(
            activeColor: Colors.blue,
            value: 0,
            groupValue: _valueDecision,
            onChanged: (value) {
              setState(() {
                _valueDecision = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text(
            'Demander une autre date',
            style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
          ),
          leading: Radio(
            activeColor: Colors.blue,
            value: 1,
            groupValue: _valueDecision,
            onChanged: (value) {
              setState(() {
                _valueDecision = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text(
            'Annuler le rendez-vous',
            style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
          ),
          leading: Radio(
            activeColor: Colors.blue,
            value: 2,
            groupValue: _valueDecision,
            onChanged: (value) {
              setState(() {
                _valueDecision = value;
              });
            },
          ),
        ),
        SizedBox(height: 3.h),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _valueDecision != 2
                ? Row(children: [
                    Checkbox(
                        value: _valuecheck,
                        onChanged: (bool value) {
                          setState(() {
                            _valuecheck = value;
                          });
                        }),
                    Text(
                      'Ajouter une explication',
                      style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
                    ),
                  ])
                : SizedBox(),
            _valuecheck == true || _valueDecision == 2
                ? Padding(
                    padding: EdgeInsets.symmetric(vertical: 1.h),
                    child: Card(
                        elevation: 0,
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: TextField(
                            maxLines: 13,
                            decoration: InputDecoration.collapsed(
                                hintText:
                                    "Pourquoi vous avez pris cette décision ?"),
                          ),
                        )),
                  )
                : SizedBox(),
          ],
        ),
      ],
    );
  }

  ListView cas8m() {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        RichText(
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(
                  text: 'Aide : ',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600, color: Colors.black)),
              TextSpan(
                text: "le medecin vous a envoyé une ou liste des dates , "
                    "vous pouvez soit choisir l un de ces date ou annuler le rendez vous.",
                style: GoogleFonts.poppins(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              )
            ],
          ),
        ),
        SizedBox(height: 2.h),
        ListTile(
          title: Text(
            'Choisir une date',
            style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
          ),
          leading: Radio(
            activeColor: Colors.blue,
            value: 0,
            groupValue: _valueDecision,
            onChanged: (value) {
              setState(() {
                _valueDecision = value;
              });
            },
          ),
        ),
        _valueDecision == 0
            ? Padding(
                padding: EdgeInsets.only(left: 10.w),
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        '15/06/2021',
                        style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
                      ),
                      leading: Radio(
                        activeColor: Colors.blue,
                        value: 0,
                        groupValue: _valueDate,
                        onChanged: (value) {
                          setState(() {
                            _valueDate = value;
                          });
                        },
                      ),
                    ),
                    ListTile(
                      title: Text(
                        '18/06/2021',
                        style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
                      ),
                      leading: Radio(
                        activeColor: Colors.blue,
                        value: 1,
                        groupValue: _valueDate,
                        onChanged: (value) {
                          setState(() {
                            _valueDate = value;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              )
            : SizedBox(),
        ListTile(
          title: Text(
            'Annuler le rendez-vous',
            style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
          ),
          leading: Radio(
            activeColor: Colors.blue,
            value: 1,
            groupValue: _valueDecision,
            onChanged: (value) {
              setState(() {
                _valueDecision = value;
              });
            },
          ),
        ),
        SizedBox(height: 3.h),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _valueDecision != 1
                ? Row(children: [
                    Checkbox(
                        value: _valuecheck,
                        onChanged: (bool value) {
                          setState(() {
                            _valuecheck = value;
                          });
                        }),
                    Text(
                      'Ajouter une explication',
                      style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
                    ),
                  ])
                : SizedBox(),
            _valuecheck == true || _valueDecision == 1
                ? Padding(
                    padding: EdgeInsets.symmetric(vertical: 1.h),
                    child: Card(
                        elevation: 0,
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: TextField(
                            maxLines: 13,
                            decoration: InputDecoration.collapsed(
                                hintText:
                                    "Pourquoi vous avez pris cette décision ?"),
                          ),
                        )),
                  )
                : SizedBox(),
          ],
        ),
      ],
    );
  }
}
