import 'package:flutter/material.dart';
import 'package:tec/models/fake_data.dart';
import 'package:tec/my_colors.dart';

class techDivider extends StatelessWidget {
  const techDivider({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: SolidColors.dividerColor,
      indent: size.width / 6,
      endIndent: size.width / 6,
      thickness: 1.5,
    );
  }
}
//............

class mainTags extends StatelessWidget {
  mainTags({
    super.key,
    required this.textTheme,
    required this.index,
  });

  final TextTheme textTheme;
  var index;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(24),
          ),
          gradient: LinearGradient(
            colors: GradiantColors.tags,
            begin: Alignment.centerRight,
            end: Alignment.centerLeft,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 8, 8),
          child: Row(
            children: [
              Icon(
                Icons.tag_sharp,
                size: 16,
                color: Colors.white,
              ),
              SizedBox(width: 8),
              Text(tagList[index].title, style: textTheme.headlineMedium),
            ],
          ),
        ));
  }
}
//................
 