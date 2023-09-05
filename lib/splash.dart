import 'dart:async';
import 'package:flutter/material.dart';
import 'package:tia_store_webview/view.dart';
class SplashView extends StatefulWidget {
  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {

  @override
  void initState() {
    checkNavigation();
    super.initState();
  }

  void checkNavigation() async {
    Timer(
        Duration(seconds: 4), () =>
        Navigator.push(context, MaterialPageRoute(builder: (context) => WebView(),))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/splash.png')
            )
        ),
      ),
    );
  }
}
