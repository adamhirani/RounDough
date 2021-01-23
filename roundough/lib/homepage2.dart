import 'package:roundough/UIcolors.dart';
import 'package:roundough/authentication_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:roundough/settings.dart';

class HomePage2 extends StatelessWidget {
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
                    MaterialPageRoute(builder: (context) => settings()));
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
                              padding: EdgeInsets.only(top: 20.0),
                              child: Text(
                                "You've saved",
                                style: TextStyle(
                                  color: UIColors.fontColor,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                ),
                              )),
                          Container(
                              padding: EdgeInsets.only(
                                  top: 15.0,
                                  left: 25.0,
                                  right: 10.0,
                                  bottom: 25),
                              child: Text(
                                "\$40.37",
                                style: TextStyle(
                                    color: UIColors.fontColor,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.normal,
                                    fontSize: 30),
                              )),
                        ])))),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 20.0, top: 10),
            child: Text(
              "Goals",
              style: TextStyle(
                  color: UIColors.fontColor,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.normal,
                  fontSize: 30),
            ),
          ),
          Center(
            child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(top: 10.0),
                width: 400,
                height: 400,
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
                              padding: EdgeInsets.only(top: 20.0),
                              child: Text(
                                "You've saved",
                                style: TextStyle(
                                  color: UIColors.fontColor,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                ),
                              )),
                          Container(
                              padding: EdgeInsets.only(
                                  top: 15.0,
                                  left: 25.0,
                                  right: 10.0,
                                  bottom: 25),
                              child: Text(
                                "\$22.37",
                                style: TextStyle(
                                    color: UIColors.fontColor,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.normal,
                                    fontSize: 30),
                              )),
                        ])))),
          ),
        ]));
  }
}
