import 'package:coding_chef_movie_web_app/skeleton_loading/carousel_skeleton.dart';
import 'package:coding_chef_movie_web_app/skeleton_loading/now_skeleton.dart';
import 'package:coding_chef_movie_web_app/skeleton_loading/popular_skeleton.dart';
import 'package:coding_chef_movie_web_app/widget/footer.dart';
import 'package:coding_chef_movie_web_app/widget/icon_searchbar.dart';
import 'package:coding_chef_movie_web_app/widget/main_drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const IconSearchbar(),
      drawer: const MainDrawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Text(
                "Top rated movies",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                    flex: 2,
                    child: Padding(
                      padding: EdgeInsets.only(left: 16),
                      child: CarouselSkeleton(),
                    )),
                SizedBox(width: 20),
                Flexible(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        child: Text(
                          "Now playing",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      NowSkeleton(),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Text(
                "Explore popular movies",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: LayoutBuilder(builder: (context, constraints) {
                double gridviewHeight = (constraints.maxWidth / 5) * 1.3 * 4;
                return SizedBox(
                  height: gridviewHeight,
                  child: const PopularSkeleton(),
                );
              }),
            ),
            const SizedBox(
              height: 40,
            ),
            const Footer()
          ],
        ),
      ),
    );
  }
}
