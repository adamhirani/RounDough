import 'package:roundough/authentication_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:roundough/signInPage.dart';
import 'package:roundough/UIcolors.dart';
import 'package:roundough/widgets.dart';

class Restaurants extends StatefulWidget {
  @override
  _RestaurantsState createState() => _RestaurantsState();
}

class _RestaurantsState extends State<Restaurants> {
  bool mcdonaldsCheck = true;
  bool starbucksCheck = true;
  bool dominosCheck = true;
  bool pizzahutCheck = false;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text(
          "Roundough",
          style: TextStyle(color: UIColors.fontColor),
        ),
        backgroundColor: UIColors.primaryColor,
      ),
      resizeToAvoidBottomPadding: false,
      backgroundColor: UIColors.whiteish,
      body: Column(children: <Widget>[
        Center(
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(top: 15.0),
            width: 400,
            child: TextField(
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  borderSide: BorderSide(color: Colors.black, width:2)
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  borderSide: BorderSide(color: Colors.black, width: 2),
                ),
                labelText: 'Search Restaurants',
                labelStyle: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
                  hintText: "Enter Restaurant Name",
                  floatingLabelBehavior: FloatingLabelBehavior.never
              )
            )
          )
        ),
        Center(
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(top: 15.0),
            width: 400,
            child: Row(children: [
              McDonsWidget(),
              Container(
                padding: EdgeInsets.only(left: 15.0),
                width: 300,
                child: Text(
                  "McDonald's",
                  style: TextStyle(
                  color: UIColors.fontColor,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.normal,
                  fontSize: 20
                  ),                
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                     mcdonaldsCheck = !mcdonaldsCheck;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue, width: 2),
                    borderRadius: BorderRadius.circular(12)
                    ),
              
                  child: mcdonaldsCheck
                  ? Icon(
                      Icons.check,
                      size: 30.0,
                      color: Colors.blue,
                      
                    )
                  : Icon(
                      Icons.check,
                      size: 30.0,
                      color: Colors.white,
                    ),
                )
              )
            ],),
          )
        ),
        Center(
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(top: 15.0),
            width: 400,
            child: Row(children: [
              StarbucksWidget(),
              Container(
                padding: EdgeInsets.only(left: 15.0),
                width: 300,
                child: Text(
                  "Starbucks",
                  style: TextStyle(
                  color: UIColors.fontColor,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.normal,
                  fontSize: 20
                  ),                
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                     starbucksCheck = !starbucksCheck;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue, width: 2),
                    borderRadius: BorderRadius.circular(12)
                    ),
              
                  child: starbucksCheck
                  ? Icon(
                      Icons.check,
                      size: 30.0,
                      color: Colors.blue,
                      
                    )
                  : Icon(
                      Icons.check,
                      size: 30.0,
                      color: Colors.white,
                    ),
                )
              )
            ],),
          )
        ),
        Center(
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(top: 15.0),
            width: 400,
            child: Row(children: [
              DominosWidget(),
              Container(
                padding: EdgeInsets.only(left: 15.0),
                width: 300,
                child: Text(
                  "Domino's",
                  style: TextStyle(
                  color: UIColors.fontColor,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.normal,
                  fontSize: 20
                  ),                
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                     dominosCheck = !dominosCheck;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue, width: 2),
                    borderRadius: BorderRadius.circular(12)
                    ),
              
                  child: dominosCheck
                  ? Icon(
                      Icons.check,
                      size: 30.0,
                      color: Colors.blue,
                      
                    )
                  : Icon(
                      Icons.check,
                      size: 30.0,
                      color: Colors.white,
                    ),
                )
              )
            ],),
          )
        ),
        Center(
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(top: 15.0),
            width: 400,
            child: Row(children: [
              PizzahutWidget(),
              Container(
                padding: EdgeInsets.only(left: 15.0),
                width: 300,
                child: Text(
                  "Pizza Hut",
                  style: TextStyle(
                  color: UIColors.fontColor,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.normal,
                  fontSize: 20
                  ),                
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                     pizzahutCheck = !pizzahutCheck;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue, width: 2),
                    borderRadius: BorderRadius.circular(12)
                    ),
              
                  child: pizzahutCheck
                  ? Icon(
                      Icons.check,
                      size: 30.0,
                      color: Colors.blue,
                      
                    )
                  : Icon(
                      Icons.check,
                      size: 30.0,
                      color: Colors.white,
                    ),
                )
              )
            ],),
          )
        )
      ],)
    );
  }
}
