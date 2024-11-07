import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tec/gen/assets.gen.dart';
import 'package:tec/models/data_models.dart';
import 'package:tec/models/fake_data.dart';
import 'package:tec/my_colors.dart';
import 'package:tec/my_component.dart';
import 'package:tec/my_strings.dart';

class MyCats extends StatefulWidget {
  const MyCats({super.key});

  @override
  State<MyCats> createState() => _MyCatsState();
}

class _MyCatsState extends State<MyCats> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var textTheme = Theme.of(context).textTheme;
    double bodyMargin = size.width / 10;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.only(right: bodyMargin, left: bodyMargin),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 32,
                  ),
                  // SvgPicture.asset(Assets.images.),
                  // SizedBox(
                  //   height: 16,
                  // ),
                  Text(
                    MyStrings.successfulRegistration,
                    style: textTheme.headlineSmall,
                  ),
                  SizedBox(
                    height: 32,
                  ),

                  TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      alignLabelWithHint: true,
                      hintText: 'نام و نام خانوادگی',
                      hintStyle: textTheme.displaySmall,
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Text(
                    MyStrings.choseCats,
                    style: textTheme.headlineSmall,
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  //tag list
                  SizedBox(
                    width: double.infinity,
                    height: 85,
                    child: GridView.builder(
                      physics: ClampingScrollPhysics(),
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 5,
                        mainAxisSpacing: 5,
                        childAspectRatio: 0.3,
                      ),
                      itemCount: tagList.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                            onTap: () {
                              setState(() {
                                if (!selectedTags.contains(tagList[index])) {
                                  selectedTags.add(tagList[index]);
                                } else {
                                  print('${tagList[index].title}exist');
                                }
                              });
                            },
                            child:
                                mainTags(textTheme: textTheme, index: index));
                      },
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Icon(
                    Icons.file_download_sharp,
                    size: 50,
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  //selected tags
                  SizedBox(
                    width: double.infinity,
                    height: 85,
                    child: GridView.builder(
                      physics: ClampingScrollPhysics(),
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 5,
                        mainAxisSpacing: 5,
                        childAspectRatio: 0.2,
                      ),
                      itemCount: selectedTags.length,
                      itemBuilder: (context, index) {
                        return Container(
                            height: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(24),
                                ),
                                color: SolidColors.surFace),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(16, 8, 8, 8),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(width: 8),
                                  Text(selectedTags[index].title,
                                      style: textTheme.headlineSmall),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        selectedTags.removeAt(index);
                                      });
                                    },
                                    child: Icon(
                                      CupertinoIcons.delete,
                                      size: 20,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ));
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
//ت قسمت 60