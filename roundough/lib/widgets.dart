import 'package:flutter/material.dart';

class MainLogoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var assetsImage = new AssetImage('assets/main_logo.png');
    var image = new Image(image: assetsImage, width: 504.0, height: 296.0);
    return Container(child: image);
  }
}

