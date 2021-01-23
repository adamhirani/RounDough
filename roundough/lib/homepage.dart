import 'package:roundough/UIcolors.dart';
import 'package:roundough/authentication_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Roundough"),
        backgroundColor: UIColors.primaryColor,
      ),
      resizeToAvoidBottomPadding: false,
      backgroundColor: UIColors.whiteish,
      body: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                //height: 60,
                //width: 400,
                child: Card(
                    color: UIColors.whiteish,
                    elevation: 30,
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
                                  color: Colors.black,
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
                                  color: Colors.black,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.normal,
                                  fontSize: 30
                                ),
                              )),
                        ])))),
                        Container(
                //alignment: Alignment.center,
                height: 160,
                width: 380,
                child: Card(
                    color: UIColors.whiteish,
                    elevation: 30,
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
                                  color: Colors.black,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                ),
                              )),
                          Container(
                              
                              padding: EdgeInsets.only(
                                  top: 25.0,
                                  left: 25.0,
                                  right: 10.0,
                                  bottom: 25),
                              child: Text(
                                "\$22.37",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.normal,
                                  fontSize: 30
                                ),
                              )),
                        ]))))
          ]),
    );
  }
}

/*
Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
            Widget>[Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("HOME"),
            RaisedButton(
              onPressed: () {
                context.read<AuthenticationService>().signOut();
              },
              child: Text("Sign out"),
            ),
          ],
        ),
      ),]
      
      
    )
*/
