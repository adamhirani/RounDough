import 'package:roundough/UIcolors.dart';
import 'package:roundough/authentication_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:roundough/logoutPage.dart';

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text(
            "Roundough",
            style: TextStyle(color: UIColors.fontColor),
          ),
          backgroundColor: UIColors.primaryColor,
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.settings,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LogOutPage()));
              },
            )
          ],
        ),
        resizeToAvoidBottomPadding: false,
        backgroundColor: UIColors.whiteish,
        body: Column(children: <Widget>[
          Center(
            child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(top: 10.0),
                width: 400,
                child: Card(
                    color: UIColors.whiteish,
                    elevation: 20,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Center(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                          Container(
                              padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: Text(
                                "Account Info",
                                style: TextStyle(
                                  color: UIColors.fontColor,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                ),
                              )),
                        ])))),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 20.0, top: 10),
            child: Text(
              "Name",
              style: TextStyle(
                  color: UIColors.fontColor,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.normal,
                  fontSize: 30),
            ),
          ),
          Center(
            child: Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(top: 10.0),
                width: 400,
                child: Card(
                    color: UIColors.whiteish,
                    elevation: 20,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Center(
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                          Container(
                            width: 325,
                              padding: EdgeInsets.only(
                                  top: 10.0,
                                  bottom: 5.0,
                                  left: 15.0),
                              child: Text(
                                "Jeffrey K.",
                                style: TextStyle(
                                  color: UIColors.fontColor,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                ),
                              )),
                          IconButton(
                            icon: Icon(
                              Icons.edit,
                              color: Colors.grey,
                            ),
                            onPressed: () {
                              
                            },
                          )
                        ])))),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 20.0, top: 10),
            child: Text(
              "Birthday",
              style: TextStyle(
                  color: UIColors.fontColor,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.normal,
                  fontSize: 30),
            ),
          ),
          Center(
            child: Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(top: 10.0),
                width: 400,
                child: Card(
                    color: UIColors.whiteish,
                    elevation: 20,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Center(
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                          Container(
                            width: 325,
                              padding: EdgeInsets.only(
                                  top: 10.0, bottom: 5.0, left: 15.0),
                              child: Text(
                                "Jan. 01, 1111",
                                style: TextStyle(
                                  color: UIColors.fontColor,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                ),
                              )),
                          IconButton(
                                icon: Icon(
                                  Icons.calendar_today_sharp,
                                  color: Colors.grey,
                                ),
                                onPressed: () {},
                              )
                        ])))),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 20.0, top: 10),
            child: Text(
              "Country",
              style: TextStyle(
                  color: UIColors.fontColor,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.normal,
                  fontSize: 30),
            ),
          ),
          Center(
            child: Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(top: 10.0),
                width: 400,
                child: Card(
                    color: UIColors.whiteish,
                    elevation: 20,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Center(
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                          Container(
                              width: 325,
                              padding: EdgeInsets.only(
                                  top: 10.0,
                                  bottom: 5.0,
                                  left: 15.0),
                              child: Text(
                                "Canada",
                                style: TextStyle(
                                  color: UIColors.fontColor,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                ),
                              )),
                          IconButton(
                            icon: Icon(
                              Icons.location_pin,
                              color: Colors.grey,
                            ),
                            onPressed: () {},
                          )
                        ])))),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 20.0, top: 10),
            child: Text(
              "Favourite Restaurant",
              style: TextStyle(
                  color: UIColors.fontColor,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.normal,
                  fontSize: 30),
            ),
          ),
          Center(
            child: Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(top: 10.0),
                width: 400,
                child: Card(
                    color: UIColors.whiteish,
                    elevation: 20,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Center(
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                          Container(
                            width: 325,
                              padding: EdgeInsets.only(
                                  top: 10.0,
                                  bottom: 5.0,
                                  left: 15.0),
                              child: Text(
                                "Tim Hortons",
                                style: TextStyle(
                                  color: UIColors.fontColor,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                ),
                              )),
                          IconButton(
                            icon: Icon(
                              Icons.edit,
                              color: Colors.grey,
                            ),
                            onPressed: () {},
                          )
                        ])))),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 20.0, top: 10),
            child: Text(
              "Lifetime Savings",
              style: TextStyle(
                  color: UIColors.fontColor,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.normal,
                  fontSize: 30),
            ),
          ),
          Center(
            child: Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(top: 10.0),
                width: 400,
                child: Card(
                    color: UIColors.whiteish,
                    elevation: 20,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Center(
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                          Container(
                              padding: EdgeInsets.only(
                                  top: 10.0,
                                  bottom: 5.0,
                                  left: 15.0,
                                  right: 205.0),
                              child: Text(
                                "999999999.99",
                                style: TextStyle(
                                  color: UIColors.fontColor,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                ),
                              )),
                        ])))),
          )
        ]));
  }
}
