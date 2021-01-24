import 'package:roundough/UIcolors.dart';
import 'package:roundough/authentication_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:roundough/widgets.dart';

import 'package:roundough/settings.dart';


class McdonaldsRedeem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text(
            "RounDough",
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
        body: Column(
          children: <Widget> [
            Center(
              child: Container(
                alignment: Alignment.center,
                  padding: EdgeInsets.only(top: 30.0),
                  width: 300,
                  height: 100,
                  child: Card(
                      color: UIColors.whiteish,
                      elevation: 20,
                      shape: RoundedRectangleBorder(
                          side: new BorderSide(width: 2),
                          borderRadius: BorderRadius.circular(30.0)),
                  child: Center(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                            Container(
                                padding: EdgeInsets.only(top: 20),
                                child: Text(
                                  "McDonald's Rewards",
                                  style: TextStyle(
                                    color: UIColors.fontColor,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                )
                            )
                              ]
                          )
                    )
                  )
                )
            ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 20.0, top: 40),
            child: Text(
              "Gift Cards:",
              style: TextStyle(
                  color: UIColors.fontColor,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.normal,
                  fontSize: 30),
            ),
          ),
          SizedBox(
              width: 370,
              height: 400,
              child: Card(
                  color: UIColors.whiteish,
                  elevation: 20,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                            child: Align(
                              alignment: Alignment(0,-0.7),
                            child: Container(
                              padding: EdgeInsets.only(top: 30.0),
                              height: 200,
                              width: 320,
                              decoration: BoxDecoration(border: Border.all(color: Colors.black, width: 2), borderRadius: BorderRadius.circular(12), image: DecorationImage(image: AssetImage("assets/dons.jpg"),fit: BoxFit.cover),),
                            
                            child: Align(
                              alignment: Alignment(0,3),
                            child: Container(
                              padding: EdgeInsets.only(top: 0.0),
                              height: 50,
                              width: 320,
                              decoration: BoxDecoration(border: Border.all(color: Colors.black, width: 2), borderRadius: BorderRadius.circular(12)),
                              child: Container(
                                alignment: Alignment.center,
                                
                                child: Text(
                                  "Redeem Now!",
                                    style: TextStyle(
                                      color: UIColors.fontColor,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 26,
                                ),
                            ),
                            ))
                            
                            
                          
                          
              )))))],
                        ),
        );
        
  }
          
          
    }