import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:plaid_flutter/plaid_flutter.dart';
import 'package:roundough/UIcolors.dart';

class PlaidPage extends StatefulWidget {
  @override
  _PlaidPageState createState() => _PlaidPageState();
}

class _PlaidPageState extends State<PlaidPage> {
  PlaidLink plaidLinkToken;
  var newpublicToken;
  var CLIENT_ID = "6001ef2ee39796001025aeb9";
  var SECRET = "18d361790b2a344e33d0cfdc9a329b";
  var unique_per_user = "user_good";

  @override
  void initState() {
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
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: double.infinity,
          color: UIColors.primaryColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("This app uses Plaids banking authentication"),
              Container(
                  height: 40.0,
                  width: 350,
                  child: Material(
                    borderRadius: BorderRadius.circular(20.0),
                    shadowColor: UIColors.whiteish,
                    color: UIColors.whiteish,
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
        ),
      ),
    );
  }
}

/*
@override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: double.infinity,
          color: UIColors.primaryColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                onPressed: () => plaidLinkToken.open(),
                child: Text("Open Plaid Link (Link Token)"),
              ),
                ],
          ),
        ),
      ),
    );
  }
*/
