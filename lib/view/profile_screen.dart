import 'package:flutter/material.dart';
import 'package:tec/gen/assets.gen.dart';
import 'package:tec/models/fake_data.dart';
import 'package:tec/my_colors.dart';
import 'package:tec/my_component.dart';
import 'package:tec/my_strings.dart';

class profileScreen extends StatelessWidget {
  const profileScreen({
    super.key,
    required this.size,
    required this.textTheme,
    required this.bodyMorgin,
  });

  final Size size;
  final TextTheme textTheme;
  final double bodyMorgin;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 100,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage(Assets.images.imageProfile.path),
                height: 100,
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.edit,
                    color: SolidColors.seeMore,
                    size: 25,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(MyStrings.imageProfileEdite)
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                'فاطمه امیری',
                style: textTheme.headlineSmall,
              ),
              Text(
                'hamdieh8484@gmail.com',
                style: textTheme.headlineSmall,
              ),
              SizedBox(
                height: 40,
              ),
              techDivider(size: size),
              InkWell(
                onTap: () {
                  //یه چیزی اجرا بشه
                },
                splashColor: SolidColors.primeryColor,
                child: SizedBox(
                  height: 45,
                  child: Center(
                    child: Text(
                      MyStrings.myFavBlog,
                      style: textTheme.headlineSmall,
                    ),
                  ),
                ),
              ),
              techDivider(size: size),
              InkWell(
                onTap: () {
                  //یه چیزی اجرا بشه
                },
                splashColor: SolidColors.primeryColor,
                child: SizedBox(
                  height: 45,
                  child: Center(
                    child: Text(
                      MyStrings.myFavPodcast,
                      style: textTheme.headlineSmall,
                    ),
                  ),
                ),
              ),
              techDivider(size: size),
              InkWell(
                onTap: () {
                  //یه چیزی اجرا بشه
                },
                splashColor: SolidColors.primeryColor,
                child: SizedBox(
                  height: 45,
                  child: Center(
                    child: Text(
                      MyStrings.logOut,
                      style: textTheme.headlineSmall,
                    ),
                  ),
                ),
              ),
              techDivider(size: size),
              SizedBox(
                height: 60,
              ),
            ],
          ),
        ));
  }
}
