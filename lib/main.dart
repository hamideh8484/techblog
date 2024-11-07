import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:tec/my_colors.dart';
import 'package:tec/view/main_screen.dart';
import 'package:tec/view/my_cats.dart';
import 'package:tec/view/register_inter.dart';

import 'package:tec/view/splash_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: SolidColors.statusBarColor,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: SolidColors.statysNavColor,
      systemNavigationBarIconBrightness: Brightness.dark));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        localizationsDelegates: const <LocalizationsDelegate<Object>>[
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const <Locale>[
          Locale('en', ''), // زبان انگلیسی
          Locale('fa', ''), // زبان فارسی (یا هر زبان راست به چپ دیگر)
        ],
        locale: const Locale('fa', ''), // تنظیم زبان پیش‌فرض به فارسی
        localeResolutionCallback: (locale, supportedLocales) {
          if (locale == null) {
            return supportedLocales.first;
          }
          for (var supportedLocale in supportedLocales) {
            if (supportedLocale.languageCode == locale.languageCode) {
              return supportedLocale;
            }
          }
          return supportedLocales.first;
        },
        title: 'Flutter Demo',
        theme: ThemeData(
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
              textStyle: WidgetStateProperty.resolveWith(
                (states) {
                  if (states.contains(WidgetState.pressed)) {
                    return textTheme.headlineMedium;
                  }
                  return textTheme.bodyLarge;
                },
              ),
              backgroundColor: WidgetStateProperty.resolveWith(
                (states) {
                  if (states.contains(WidgetState.pressed)) {
                    return SolidColors.seeMore;
                  }
                  return SolidColors.primeryColor;
                },
              ),
            ),
          ),
          inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(width: 2),
            ),
            filled: true,
            fillColor: Colors.white,
          ),
          fontFamily: 'dana',
          textTheme: TextTheme(
            headlineLarge: TextStyle(
                fontFamily: 'dana',
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: SolidColors.posterTitle),
            bodyLarge: TextStyle(
                fontFamily: 'dana',
                fontSize: 14,
                fontWeight: FontWeight.w300,
                color: SolidColors.subPosterTitle),
            headlineMedium: TextStyle(
                fontFamily: 'dana',
                fontSize: 12,
                color: Colors.white,
                fontWeight: FontWeight.w300),
            headlineSmall: TextStyle(
              fontFamily: 'dana',
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
            bodyMedium: TextStyle(
                fontFamily: 'dana',
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: SolidColors.seeMore),
            labelSmall: TextStyle(
                fontFamily: 'dana',
                fontSize: 14,
                color: Color.fromARGB(255, 70, 70, 70),
                fontWeight: FontWeight.w700),
            displaySmall: TextStyle(
                fontFamily: 'dana',
                fontSize: 14,
                color: SolidColors.hintText,
                fontWeight: FontWeight.w700),
          ),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        // home: SplashScreen());
        home: MyCats());
  }
}
