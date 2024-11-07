import 'package:flutter/material.dart';
import 'package:tec/models/fake_data.dart';
import 'package:tec/my_colors.dart';
import 'package:tec/my_component.dart';
import 'package:tec/my_strings.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({
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
        padding: EdgeInsets.only(top: 16),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: homePagePoster(size: size, textTheme: textTheme),
            ),
            //  tag list

            homePageTagList(bodyMorgin: bodyMorgin, textTheme: textTheme),
            SizedBox(
              height: 32,
            ),
            //see More
            seeMoreBlog(bodyMorgin: bodyMorgin, textTheme: textTheme),
            //blog list
            homePageBlogList(
                size: size, bodyMorgin: bodyMorgin, textTheme: textTheme),
            SizedBox(
              height: 32,
            ),

            //podcast list
            seeMorePodcast(bodyMorgin: bodyMorgin, textTheme: textTheme),
            //blog list
            homePagePodcastList(size: size, bodyMorgin: bodyMorgin),
            SizedBox(
              height: 60,
            ),
          ],
        ),
      ),
    );
  }
}

class homePagePodcastList extends StatelessWidget {
  const homePagePodcastList({
    super.key,
    required this.size,
    required this.bodyMorgin,
  });

  final Size size;
  final double bodyMorgin;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height / 3.5,
      child: ListView.builder(
        itemCount: blogList.getRange(0, 5).length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          //blog item
          return Padding(
            padding: EdgeInsets.only(right: index == 0 ? bodyMorgin : 15),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: size.height / 5.3,
                    width: size.width / 2.3,
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(16),
                            ),
                            image: DecorationImage(
                                image: NetworkImage(blogList[index].imageUrl),
                                fit: BoxFit.cover),
                          ),
                          foregroundDecoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(16),
                              ),
                              gradient: LinearGradient(
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter,
                                  colors: GradiantColors.blogPost)),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: size.width / 2.3,
                  child: Text(
                    style: TextStyle(color: Colors.black),
                    blogList[index].title,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class seeMorePodcast extends StatelessWidget {
  const seeMorePodcast({
    super.key,
    required this.bodyMorgin,
    required this.textTheme,
  });

  final double bodyMorgin;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: bodyMorgin, bottom: 8),
      child: Row(
        children: [
          Icon(
            Icons.mic_rounded,
            color: SolidColors.colorTitle,
            size: 30,
          ),
          SizedBox(
            width: 8,
          ),
          Text(
            MyStrings.viewHotesPodCasts,
            style: textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}

class homePageBlogList extends StatelessWidget {
  const homePageBlogList({
    super.key,
    required this.size,
    required this.bodyMorgin,
    required this.textTheme,
  });

  final Size size;
  final double bodyMorgin;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height / 3.5,
      child: ListView.builder(
        itemCount: blogList.getRange(0, 5).length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          //blog item
          return Padding(
            padding: EdgeInsets.only(right: index == 0 ? bodyMorgin : 15),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: size.height / 5.3,
                    width: size.width / 2.3,
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(16),
                            ),
                            image: DecorationImage(
                                image: NetworkImage(blogList[index].imageUrl),
                                fit: BoxFit.cover),
                          ),
                          foregroundDecoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(16),
                              ),
                              gradient: LinearGradient(
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter,
                                  colors: GradiantColors.blogPost)),
                        ),
                        Positioned(
                          right: 0,
                          bottom: 8,
                          left: 0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                blogList[index].writer,
                                style: textTheme.bodyLarge,
                              ),
                              Row(
                                children: [
                                  Text(
                                    blogList[index].views,
                                    style: textTheme.bodyLarge,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Icon(
                                    Icons.remove_red_eye_sharp,
                                    color: Colors.white,
                                    size: 16,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: size.width / 2.3,
                  child: Text(
                    style: TextStyle(color: Colors.black),
                    blogList[index].title,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class seeMoreBlog extends StatelessWidget {
  const seeMoreBlog({
    super.key,
    required this.bodyMorgin,
    required this.textTheme,
  });

  final double bodyMorgin;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: bodyMorgin, bottom: 8),
      child: Row(
        children: [
          Icon(
            Icons.edit,
            color: SolidColors.seeMore,
            size: 30,
          ),
          SizedBox(
            width: 8,
          ),
          Text(
            MyStrings.viewHotesBlog,
            style: textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}

class homePageTagList extends StatelessWidget {
  const homePageTagList({
    super.key,
    required this.bodyMorgin,
    required this.textTheme,
  });

  final double bodyMorgin;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: tagList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.fromLTRB(0, 8, index == 0 ? bodyMorgin : 15, 8),
            child: mainTags(
              textTheme: textTheme,
              index: index,
            ),
          );
        },
      ),
    );
  }
}

class homePagePoster extends StatelessWidget {
  const homePagePoster({
    super.key,
    required this.size,
    required this.textTheme,
  });

  final Size size;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: size.width / 1.25,
          height: size.height / 4.2,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(16),
            ),
            image: DecorationImage(
                image: AssetImage(homePagePosterMap["imageAssets"]),
                fit: BoxFit.cover),
          ),
          foregroundDecoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(16),
            ),
            gradient: LinearGradient(
                colors: GradiantColors.homePosterCoverGradiant,
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter),
          ),
        ),
        Positioned(
          right: 0,
          bottom: 8,
          left: 0,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    homePagePosterMap["writer"] +
                        " _ " +
                        homePagePosterMap["date"],
                    style: textTheme.bodyLarge,
                  ),
                  Row(
                    children: [
                      Text(
                        homePagePosterMap["view"],
                        style: textTheme.bodyLarge,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Icon(
                        Icons.remove_red_eye_sharp,
                        color: Colors.white,
                        size: 16,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                homePagePosterMap["title"],
                style: textTheme.headlineLarge,
              ),
            ],
          ),
        )
      ],
    );
  }
}
