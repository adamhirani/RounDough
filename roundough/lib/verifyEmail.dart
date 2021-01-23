import 'dart:async';

import 'package:roundough/UIcolors.dart';
import 'package:roundough/signInPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:roundough/widgets.dart';
import 'package:roundough/plaid_screen.dart';

import 'dart:convert';


import 'package:http/http.dart' as http;
import 'package:plaid_flutter/plaid_flutter.dart';


class VerifyScreen extends StatefulWidget {
  @override
  _VerifyScreenState createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  final auth = FirebaseAuth.instance;
  User user;
  Timer timer;

  PlaidLink plaidLinkToken;
  var newpublicToken;
  var CLIENT_ID = "6001ef2ee39796001025aeb9";
  var SECRET = "18d361790b2a344e33d0cfdc9a329b";
  var unique_per_user = "user_good";

  @override
  void initState() {
    user = auth.currentUser;
    user.sendEmailVerification();

    timer = Timer.periodic(Duration(seconds: 5), (timer) {
      checkEmailVerified();
    });
    super.initState();
    getLinkToken();
  }

  getLinkToken() async {
    var headers = {
      'Content-Type': 'application/json',
    };

var data =
    '{ "client_id": "$CLIENT_ID", "secret": "$SECRET", "user": { "client_user_id": "$unique_per_user" }, "client_name": "Plaid App", "products": ["auth"], "country_codes": ["US"], "language": "en", "webhook": "https://sample-web-hook.com", "account_filters": { "depository": { "account_subtypes": ["checking"] } } }';

    var res = await http.post('https://sandbox.plaid.com/link/token/create',
        headers: headers, body: data);
    if (res.statusCode != 200)
      throw Exception('http.post error: statusCode= ${res.statusCode}');
    print(res.body);

    Map<String, dynamic> responseJson = json.decode(res.body);
    var response_link_token = responseJson['link_token'];
    print(response_link_token);

    LinkConfiguration linkTokenConfiguration = LinkConfiguration(
      linkToken: "$response_link_token",
    );

    plaidLinkToken = PlaidLink(
      configuration: linkTokenConfiguration,
      onSuccess: _onSuccessCallback,
      onEvent: _onEventCallback,
      onExit: _onExitCallback,
    );
  }

  void _onSuccessCallback(String publicToken, LinkSuccessMetadata metadata) {
    print("onSuccess: $publicToken, metadata: ${metadata.description()}");
    newpublicToken = publicToken;
  }

  void _onEventCallback(String event, LinkEventMetadata metadata) {
    print("onEvent: $event, metadata: ${metadata.description()}");
  }

  void _onExitCallback(String error, LinkExitMetadata metadata) {
    print("onExit: $error, metadata: ${metadata.description()}");
  }



  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Stack(
      children: <Widget>[
        Container(
          child: LoginBackgroundWidget(),
        ),
        Scaffold(
          resizeToAvoidBottomPadding: false,
          backgroundColor: Colors.transparent,
          body: Center(
              child: Container(
                  height: 400,
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
                                padding: EdgeInsets.only(top: 120.0),
                                child: Text(
                                  "Email Sent.",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 60,
                                  ),
                                )),
                            Container(
                                padding: EdgeInsets.only(
                                    top: 25.0,
                                    left: 20.0,
                                    right: 10.0,
                                    bottom: 25),
                                child: Text(
                                  "An email was sent to ${user.email}",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.normal,
                                  ),
                                )),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                    "This app uses Plaids banking authentication"),
                                Container(
                                    height: 40.0,
                                    width: 350,
                                    child: Material(
                                      borderRadius: BorderRadius.circular(20.0),
                                      shadowColor: UIColors.whiteish,
                                      color: UIColors.primaryColor,
                                      elevation: 7.0,
                                      child: GestureDetector(
                                        onTap: () => plaidLinkToken.open(),
                                        child: Center(
                                          child: Text(
                                            'Link Plaid',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'Montserrat'),
                                          ),
                                        ),
                                      ),
                                    )),
                              ],
                            ),
                          ]))))),
        )
      ],
    );
  }

  Future<void> checkEmailVerified() async {
    user = auth.currentUser;
    await user.reload();
    if (user.emailVerified) {
      timer.cancel();
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => SignInPage()));
    }
  }
}
