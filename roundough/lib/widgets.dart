import 'package:flutter/material.dart';

class MainLogoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var assetsImage = new AssetImage('assets/main_logo.png');
    var image = new Image(image: assetsImage, width: 504.0, height: 296.0);
    return Container(child: image);
  }
}

class LoginBackgroundWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var assetsImage = new AssetImage('assets/login_background.png');
    var image = new Image(image: assetsImage, width: 1125.0, height: 2436.0);
    return Container(child: image);
  }
}

class McDonsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var assetsImage = new AssetImage('assets/mcdons.png');
    var image = new Image(image: assetsImage, width: 50.0, height: 50.0);
    return (Container(
        child: ClipRRect(
      borderRadius: BorderRadius.circular(50.0),
      child: image,
    )));

  }
}
class StarbucksWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var assetsImage = new AssetImage('assets/starbucks.png');
    var image = new Image(image: assetsImage, width: 50.0, height: 50.0);
    return (Container(
        child: ClipRRect(
      borderRadius: BorderRadius.circular(50.0),
      child: image,
    )));

  }
}
class DominosWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var assetsImage = new AssetImage('assets/dominos.png');
    var image = new Image(image: assetsImage, width: 50.0, height: 50.0);
    return (Container(
        child: ClipRRect(
      borderRadius: BorderRadius.circular(50.0),
      child: image,
    )));

  }
}

class PizzahutWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var assetsImage = new AssetImage('assets/pizzahut.png');
    var image = new Image(image: assetsImage, width: 50.0, height: 50.0);
    return (Container(
        child: ClipRRect(
      borderRadius: BorderRadius.circular(50.0),
      child: image,
    )));

  }
}
