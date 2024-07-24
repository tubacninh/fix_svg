import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'details_screen.dart';
import 'bottom_nav_bar.dart';
import 'category_card.dart';
import 'search_bar.dart' as custom;
import 'package:flutter_application_1/constants/constants_color.dart'
    show ConstantsColor;
import 'package:flutter_application_1/constants/constants_app_text_style.dart';
import 'package:flutter_application_1/constants/constants_images.dart';
import 'package:flutter_application_1/constants/constants_text.dart'
    show AppTexts;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meditation App',
      theme: ThemeData(
        fontFamily: "Cairo",
        scaffoldBackgroundColor: ConstantsColor.kBackgroundColor,
        textTheme: Theme.of(context)
            .textTheme
            .apply(displayColor: ConstantsColor.kTextColor),
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .45,
            decoration: BoxDecoration(
              color: ConstantsColor.kBackground,
              image: DecorationImage(
                alignment: Alignment.centerLeft,
                image: AppImages.undrawPilateGpdb,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    alignment: Alignment.center,
                    height: 52,
                    width: 52,
                    decoration: BoxDecoration(
                      color: ConstantsColor.kBackground2,
                      shape: BoxShape.circle,
                    ),
                    child: AppImages.menuWidget,
                  ),
                ),
                Text(
                  AppTexts.goodMorning,
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium!
                      .copyWith(fontWeight: FontWeight.w900),
                ),
                custom.SearchBar(),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    childAspectRatio: .85,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    children: <Widget>[
                      CategoryCard(
                        title: AppTexts.dietRecommendation,
                        svgSrc: AppImages.hamburger,
                        press: () {},
                      ),
                      CategoryCard(
                        title: AppTexts.kegelExercises,
                        svgSrc: AppImages.exercises,
                        press: () {},
                      ),
                      CategoryCard(
                        title: AppTexts.kegelExercises,
                        svgSrc: AppImages.meditationWomen,
                        press: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return DetailsScreen();
                            }),
                          );
                        },
                      ),
                      CategoryCard(
                        title: AppTexts.yoga,
                        svgSrc: AppImages.yoga,
                        press: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
