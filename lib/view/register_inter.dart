import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tec/gen/assets.gen.dart';
import 'package:tec/my_colors.dart';
import 'package:tec/my_strings.dart';
import 'package:tec/view/my_cats.dart';
import 'package:validators/validators.dart';

class RegisterInter extends StatelessWidget {
  const RegisterInter({super.key});

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('سلام')
            //  SvgPicture.asset(
            //   Assets.images.tech,
            //   height: 100,
            // )و
            //برای اینکه چند خط داشته باشیم
            ,
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: MyStrings.welcome,
                    style: textTheme.headlineSmall,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 32),
              child: ElevatedButton(
                onPressed: () {
                  _showEmailBottomSheet(context, size, textTheme);
                },
                child: Text(
                  "بزن بریم",
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }

  Future<dynamic> _showEmailBottomSheet(
      BuildContext context, Size size, TextTheme textTheme) {
    // RegExp isEmaill = RegExp('^[a-z-0-9]+@');
    return showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return Padding(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Container(
            height: size.height / 2,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    MyStrings.insertYourEmail,
                    style: textTheme.headlineSmall,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(24),
                    child: TextField(
                      onChanged: (value) {
                        print(value + 'is Email:' + isEmail(value).toString());
                        // print(value +
                        //     'is Email' +
                        //     isEmaill.hasMatch(value).toString());
                      },
                      style: textTheme.displaySmall,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          hintText: "textBlog@gmail.com",
                          hintStyle: textTheme.displaySmall),
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                        _activateCodeBottomSheet(context, size, textTheme);
                      },
                      child: Text("ادامه"))
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Future<dynamic> _activateCodeBottomSheet(
      BuildContext context, Size size, TextTheme textTheme) {
    // RegExp isEmaill = RegExp('^[a-z-0-9]+@');
    return showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return Padding(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Container(
            height: size.height / 2,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    MyStrings.activatedCode,
                    style: textTheme.headlineSmall,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(24),
                    child: TextField(
                      onChanged: (value) {
                        print(value + 'is Email:' + isEmail(value).toString());
                        // print(value +
                        //     'is Email' +
                        //     isEmaill.hasMatch(value).toString());
                      },
                      style: textTheme.displaySmall,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          hintText: "******",
                          hintStyle: textTheme.displaySmall),
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => MyCats(),
                        ));
                      },
                      child: Text("ادامه"))
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
