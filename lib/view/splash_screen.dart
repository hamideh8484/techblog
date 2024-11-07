import 'package:flutter/material.dart';

import 'package:tec/gen/assets.gen.dart';
import 'package:tec/view/main_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3)).then((value) {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => MainScreen()));
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                Assets.images.logoBlog.path,
                height: 64,
              ),
              SizedBox(
                height: 32,
              ),
              // SpinKitFadingCube(
              //   color: SolidColors.primeryColor,
              //   size: 32,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
