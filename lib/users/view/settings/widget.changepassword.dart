import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hygeia/users/view/auth/widget.forgot.dart';
import 'package:hygeia/users/view/auth/widget.login.dart';
import 'package:sizer/sizer.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key key}) : super(key: key);

  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  TextEditingController OldPasswordController;
  TextEditingController NewPasswordController;
  TextEditingController NewPasswordConfirmController;
  GlobalKey<FormState> _formKey;
  void initState() {
    OldPasswordController = new TextEditingController();
    NewPasswordController = new TextEditingController();
    _formKey = GlobalKey<FormState>();
    NewPasswordConfirmController = new TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 3.h),
            child: Row(
              children: [
                InkWell(
                  onTap: () => {
                    Navigator.pop(context),
                  },
                  child: Container(
                    padding: EdgeInsets.all(1.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(0.8.h),
                      color: Colors.blue,
                    ),
                    child: Icon(Icons.arrow_back_rounded, color: Colors.white),
                  ),
                ),
                SizedBox(
                  width: 2.h,
                ),
                Text(
                  'Changer mot de passe',
                  style: GoogleFonts.poppins(
                      fontSize: 21, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          Expanded(
              child: Container(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 4.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Mot de passe actuel:',
                        style: GoogleFonts.poppins(fontSize: 16),
                      ),
                      TextFormField(
                        style: GoogleFonts.poppins(
                          color: Color.fromRGBO(21, 32, 43, 0.7),
                          fontSize: 15,
                        ),
                        controller: emailControlleur,
                        decoration: InputDecoration(
                          hintStyle: GoogleFonts.poppins(
                            color: Color.fromRGBO(21, 32, 43, 0.7),
                            fontSize: 15,
                          ),
                          alignLabelWithHint: true,
                          hintText: "mot de passe actuel",
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
                        ),
                      ),
                      SizedBox(height: 5.h),
                      Text(
                        'Nouveau mot passe:',
                        style: GoogleFonts.poppins(fontSize: 16),
                      ),
                      TextFormField(
                        style: GoogleFonts.poppins(
                          color: Color.fromRGBO(21, 32, 43, 0.7),
                          fontSize: 15,
                        ),
                        controller: NewPasswordController,
                        decoration: InputDecoration(
                          hintStyle: GoogleFonts.poppins(
                            color: Color.fromRGBO(21, 32, 43, 0.7),
                            fontSize: 15,
                          ),
                          alignLabelWithHint: true,
                          hintText: "Nouveau mot de passe",
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
                        ),
                      ),
                      SizedBox(height: 5.h),
                      Text(
                        'Confirmer mot passe :',
                        style: GoogleFonts.poppins(fontSize: 16),
                      ),
                      TextFormField(
                        style: GoogleFonts.poppins(
                          color: Color.fromRGBO(21, 32, 43, 0.7),
                          fontSize: 15,
                        ),
                        controller: NewPasswordConfirmController,
                        decoration: InputDecoration(
                          hintStyle: GoogleFonts.poppins(
                            color: Color.fromRGBO(21, 32, 43, 0.7),
                            fontSize: 15,
                          ),
                          alignLabelWithHint: true,
                          hintText: "confirmer mot de passe",
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
                        ),
                      ),
                    ],
                  ),
                  CustomElevation(
                    height: 7.h,
                    child: FlatButton(
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(8.0)),
                        padding: EdgeInsets.symmetric(horizontal: 4.h),
                        color: Color.fromRGBO(1, 85, 156, 1),
                        onPressed: () async {
                          if (!RegExp('^[a-zA-Z][a-zA-Z]?.[a-zA-Z]*@esi-sba.dz')
                              .hasMatch(emailControlleur.text)) {
                            showTopSnackBar(
                              context,
                              CustomSnackBar.error(
                                textStyle: GoogleFonts.poppins(
                                  color: Colors.white,
                                ),
                                message:
                                    "Veuillez entrer une adresse e-mail valide",
                              ),
                            );
                            return;
                          }
                        },
                        child: Text(
                          "changer",
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        )),
                  )
                ],
              ),
            ),
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 3.h),
            decoration: BoxDecoration(
              color: Color(0xffE2F1F0),
              borderRadius: BorderRadius.circular(3.5.h),
            ),
          )),
        ],
      ),
    ));
  }
}
