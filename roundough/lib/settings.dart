import 'package:roundough/authentication_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:roundough/signInPage.dart';
import 'package:roundough/UIcolors.dart';
import 'package:roundough/restaurants.dart';

// ignore: camel_case_types
class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Roundough",
            style: TextStyle(color: UIColors.fontColor),
          ),
          backgroundColor: UIColors.primaryColor,
          actions: <Widget>[
          ],
        ),
        resizeToAvoidBottomPadding: false,
        backgroundColor: UIColors.whiteish,
        body: Column(
          children: <Widget>[
            Center(
              child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(top: 50.0),
                  width: 400,
                  height: 125,
                  child: Stack(children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                                MaterialPageRoute(builder: (context) => Restaurants()));
                        },
                  child: Card(
                      color: UIColors.whiteish,
                      elevation: 20,
                      shape: RoundedRectangleBorder(
                          side: new BorderSide(width: 2),
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Center(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                            Container(
                                padding: EdgeInsets.only(top: 20),
                                child: Text(
                                  "Restaurants",
                                  style: TextStyle(
                                    color: UIColors.fontColor,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                  ),
                                )),
                          ])))),])),
            ),
            Center(
              child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(top: 20.0),
                  width: 400,
                  height: 95,
                  child: Stack(children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                                MaterialPageRoute(builder: (context) => AccountPage()));
                        },
                  child: Card(
                      color: UIColors.whiteish,
                      elevation: 20,
                      shape: RoundedRectangleBorder(
                          side: new BorderSide(width: 2),
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Center(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                            Container(
                                padding: EdgeInsets.only(top: 20),
                                child: Text(
                                  "Account",
                                  style: TextStyle(
                                    color: UIColors.fontColor,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                  ),
                                )),
                          ])))),]))
            ),
            Center(
              child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(top: 20.0),
                  width: 400,
                  height: 95,
                  child: Card(
                      color: UIColors.whiteish,
                      elevation: 20,
                      shape: RoundedRectangleBorder(
                          side: new BorderSide(width: 2),
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Center(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                            Container(
                                padding: EdgeInsets.only(top: 20),
                                child: Text(
                                  "Security",
                                  style: TextStyle(
                                    color: UIColors.fontColor,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                  ),
                                )),
                          ])))),
            ),
            Center(
              child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(top: 20.0),
                  width: 400,
                  height: 95,
                  child: Card(
                      color: UIColors.whiteish,
                      elevation: 20,
                      shape: RoundedRectangleBorder(
                          side: new BorderSide(width: 2),
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Center(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                            Container(
                                padding: EdgeInsets.only(top: 20),
                                child: Text(
                                  "Gift Cards",
                                  style: TextStyle(
                                    color: UIColors.fontColor,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                  ),
                                )),
                          ])))),
            ),
            Center(
              child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(top: 20.0),
                  width: 400,
                  height: 95,
                  child: Card(
                      color: UIColors.whiteish,
                      elevation: 20,
                      shape: RoundedRectangleBorder(
                          side: new BorderSide(width: 2),
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Center(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                            Container(
                                padding: EdgeInsets.only(top: 20),
                                child: Text(
                                  "Legal & About",
                                  style: TextStyle(
                                    color: UIColors.fontColor,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                  ),
                                )),
                          ])))),
            ),
            Center(
              child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(top: 125.0),
                  width: 400,
                  height: 200,
                  child: Stack(children: [
                  GestureDetector(
                      onTap: () {
                        context.read<AuthenticationService>().signOut();
                        Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignInPage()));
                        },
                  child: Card(
                    color: UIColors.whiteish,
                    elevation: 20,
                    shape: RoundedRectangleBorder(
                        side: new BorderSide(width: 2, color: UIColors.errorRed),
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Center(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                          Container(
                              padding: EdgeInsets.only(top: 20),
                              child: Text(
                                "Log Out",
                                style: TextStyle(
                                  color: UIColors.errorRed,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                ),
                              )),
              ])))),]),
            ),
            ),
          ],
        ));
  }
}
