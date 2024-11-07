import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tec/gen/assets.gen.dart';
import 'package:tec/models/fake_data.dart';
import 'package:tec/my_colors.dart';
import 'package:tec/my_strings.dart';
import 'package:tec/view/home_screen.dart';
import 'package:tec/view/profile_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

final GlobalKey<ScaffoldState> _key = GlobalKey();

class _MainScreenState extends State<MainScreen> {
  var selectedPageIndex = 0; //not

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;
    double bodyMorgin = size.width / 10;
    return SafeArea(
      child: Scaffold(
        key: _key,
        drawer: Drawer(
          backgroundColor: SolidColors.scaffoldBg,
          child: Padding(
            padding: EdgeInsets.only(right: bodyMorgin, left: bodyMorgin),
            child: ListView(
              children: [
                DrawerHeader(
                  child: Center(
                    child: Image.asset(
                      Assets.images.logoBlog.path,
                      scale: 3,
                    ),
                  ),
                ),
                ListTile(
                  title: Text(
                    "پروفایل کاربری",
                    style: textTheme.headlineSmall,
                  ),
                  onTap: () {},
                ),
                Divider(
                  color: SolidColors.dividerColor,
                ),
                ListTile(
                  title: Text(
                    "درباره تک بلاگ",
                    style: textTheme.headlineSmall,
                  ),
                  onTap: () {},
                ),
                Divider(
                  color: SolidColors.dividerColor,
                ),
                ListTile(
                  title: Text(
                    "اشتراک گذاری تک بلاگ",
                    style: textTheme.headlineSmall,
                  ),
                  onTap: () {},
                ),
                Divider(
                  color: SolidColors.dividerColor,
                ),
                ListTile(
                  title: Text(
                    "  تک بلاگ در گیت هاب",
                    style: textTheme.headlineSmall,
                  ),
                  onTap: () {},
                ),
                Divider(
                  color: SolidColors.dividerColor,
                ),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: SolidColors.scaffoldBg,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  _key.currentState!.openDrawer();
                },
                child: Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
              ),
              Image.asset(
                Assets.images.logoBlog.path,
                height: size.height / 13.6,
              ),
              Icon(
                Icons.search,
                color: Colors.black,
              )
            ],
          ),
        ),
        body: Stack(
          children: [
            Positioned.fill(
              child: IndexedStack(
                index: selectedPageIndex,
                children: [
                  homeScreen(
                      size: size, textTheme: textTheme, bodyMorgin: bodyMorgin),
                  profileScreen(
                      size: size, textTheme: textTheme, bodyMorgin: bodyMorgin),
                ],
              ),
            ),
            bottomNavigation(
              size: size,
              bodyMorgin: bodyMorgin,
              textTheme: textTheme,
              changeScreen: (int value) {
                setState(() {
                  selectedPageIndex = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

class bottomNavigation extends StatelessWidget {
  const bottomNavigation({
    super.key,
    required this.size,
    required this.bodyMorgin,
    required this.textTheme,
    required this.changeScreen,
  });

  final Size size;
  final double bodyMorgin;
  final TextTheme textTheme;
  final Function(int) changeScreen;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 8,
      right: 0,
      left: 0,
      child: Container(
        height: size.height / 10,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: GradiantColors.buttonNavBackgorund,
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: bodyMorgin, right: bodyMorgin),
          child: Container(
            height: size.height / 8,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: GradiantColors.buttonNav),
              borderRadius: BorderRadius.all(
                Radius.circular(18),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () => changeScreen(0),
                  icon: Icon(
                    Icons.home,
                    size: 35,
                  ),
                  color: Colors.white,
                ),
                IconButton(
                  onPressed: () => changeScreen(2),
                  icon: Icon(
                    Icons.eco,
                    size: 35,
                  ),
                  color: Colors.white,
                ),
                IconButton(
                  onPressed: () => changeScreen(1),
                  icon: Icon(
                    Icons.person,
                    size: 35,
                  ),
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
