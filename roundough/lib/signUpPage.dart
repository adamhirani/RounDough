import 'package:roundough/authentication_service.dart';
import 'package:roundough/verifyEmail.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:roundough/UIcolors.dart';
import 'package:email_validator/email_validator.dart';
import 'package:roundough/widgets.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final TextEditingController rePasswordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  String error = '';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: UIColors.primaryColor,
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
            Widget>[
          Container(
            padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
            child: new MainLogoWidget(),
          ),
          

          Container(
              padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
              child: Column(
                children: <Widget>[
                  TextField(
                    key: _formKey,
                    
                    style: TextStyle(color: Colors.white),
                    controller: emailController,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        borderSide:
                            BorderSide(color: UIColors.whiteish, width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        borderSide:
                            BorderSide(color: UIColors.whiteish, width: 2),
                      ),
                      labelText: 'email',
                      labelStyle: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          color: UIColors.whiteish),
                      // hintText: 'EMAIL',
                      // hintStyle: ,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  TextField(
                    style: TextStyle(color: Colors.white),
                    controller: passwordController,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        borderSide:
                            BorderSide(color: UIColors.whiteish, width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        borderSide:
                            BorderSide(color: UIColors.whiteish, width: 2),
                      ),
                      labelText: 'password',
                      labelStyle: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          color: UIColors.whiteish),
                    ),
                    obscureText: true,
                  ),
                  SizedBox(height: 10.0),
                  TextField(
                    style: TextStyle(color: Colors.white),
                    controller: rePasswordController,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        borderSide:
                            BorderSide(color: UIColors.whiteish, width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        borderSide:
                            BorderSide(color: UIColors.whiteish, width: 2),
                      ),
                      labelText: 're-type password',
                      labelStyle: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          color: UIColors.whiteish),
                    ),
                    obscureText: true,
                  ),
                  SizedBox(height: 50.0),
                  Container(
                      padding: EdgeInsets.only(
                          top: 25.0, left: 20.0, right: 20.0, bottom: 25),
                      child: Text(
                        error,
                        style: TextStyle(
                          color: UIColors.errorRed,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                  Container(
                      height: 40.0,
                      child: Material(
                        borderRadius: BorderRadius.circular(20.0),
                        shadowColor: UIColors.whiteish,
                        color: UIColors.whiteish,
                        elevation: 7.0,
                        child: GestureDetector(
                          onTap: () {
                            if (EmailValidator.validate(
                                    emailController.text.trim()) ==
                                false) {
                              setState(() {
                                error = 'Enter valid email.';
                              });
                            } else if (passwordController.text.trim() != rePasswordController.text.trim()){
                              setState(() {
                                error = "Passwords do not match.";
                              });      
                            } else if (!isPasswordCompliant(passwordController.text.trim())){
                              setState(() {
                                error = "Password not strong enough.";
                              });
                            }
                            
                            else {
                              context
                                  .read<AuthenticationService>()
                                  .signUp(
                                      email: emailController.text.trim(),
                                      password: passwordController.text.trim())
                                  .then((_) {
                                Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: (context) => VerifyScreen()));
                              });
                            }
                          },
                          child: Center(
                            child: Text(
                              'register',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat'),
                            ),
                          ),
                        ),
                      )),
                ],
              )),
        ]));
        
  }
}

bool isPasswordCompliant(String password, [int minLength = 8]) {
  if (password == null || password.isEmpty) {
    return false;
  }

  bool hasUppercase = password.contains(new RegExp(r'[A-Z]'));
  bool hasDigits = password.contains(new RegExp(r'[0-9]'));
  bool hasLowercase = password.contains(new RegExp(r'[a-z]'));
  bool hasSpecialCharacters = password.contains(new RegExp(r'[!@#$%^&*(),.?":{}|<>]'));
  bool hasMinLength = password.length >= minLength;

  return hasDigits & hasUppercase & hasLowercase & hasSpecialCharacters & hasMinLength;
}
