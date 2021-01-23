import 'package:roundough/UIcolors.dart';
import 'package:roundough/authentication_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:roundough/settings.dart';

class History extends StatelessWidget {
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
                              padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: Text(
                                "History",
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
              "Jan 22, 2021",
              style: TextStyle(
                  color: UIColors.fontColor,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.normal,
                  fontSize: 15),
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
                                "You saved \$0.31 from your purchase!\n\nYou saved \$0.77 from your purchase!",
                                style: TextStyle(
                                  color: UIColors.fontColor,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              )),
                        ])))),
          ),

                    Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 20.0, top: 10),
            child: Text(
              "Jan 21, 2021",
              style: TextStyle(
                  color: UIColors.fontColor,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.normal,
                  fontSize: 15),
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
                                "You saved \$0.42 from your purchase!\n\nYou saved \$0.18 from your purchase!\n\nYou spent \$2.37 at McDonald's!",
                                style: TextStyle(
                                  color: UIColors.fontColor,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              )),
                        ])))),
          ),

                    Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 20.0, top: 10),
            child: Text(
              "Jan 19, 2021",
              style: TextStyle(
                  color: UIColors.fontColor,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.normal,
                  fontSize: 15),
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
                                "You saved \$0.03 from your purchase!\n\nYou spent \$9.58 at Starbucks!",
                                style: TextStyle(
                                  color: UIColors.fontColor,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              )),
                        ])))),
          ),

                    Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 20.0, top: 10),
            child: Text(
              "Jan 17, 2021",
              style: TextStyle(
                  color: UIColors.fontColor,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.normal,
                  fontSize: 15),
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
                                "You saved \$0.82 from your purchase!\n\nYou saved \$0.69 from your purchase! Nice!\n\nYou saved \$0.13 from your purchase!\n\nYou saved \$0.11 from your purchase!",
                                style: TextStyle(
                                  color: UIColors.fontColor,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              )),
                        ])))),
          ),
        ]));
  }
}
