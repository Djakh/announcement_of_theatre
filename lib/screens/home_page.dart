import 'package:announcement_of_theatre/model/movie.dart';
import 'package:announcement_of_theatre/widgets/top_rated_list_item.dart';
import 'package:announcement_of_theatre/widgets/vertical_list_item.dart';

import '../widgets/horizontal_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';



class HomePage extends StatelessWidget {
  static const routeName = "/home_page";
const HomePage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: Text("Movie App"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: Icon(Icons.search))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
           const RowTwoSeperate(mainText: "Recommended"),
            Container(
              height: 280,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: movieList.length,
                itemBuilder: (context, i) {
                  return HorizontalListItem(index: i,);

                },
              ),
            ),
            SizedBox(height: 30.0),
            const RowTwoSeperate(mainText: "Best of 2021"),
            Container(
              height: 500,
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: bestMovieList.length,
                itemBuilder: (context, i) {
                    return VerticalListItem(index: i);


                },

                ),
            ),
            const RowTwoSeperate(mainText: "Top Rated Movies"),
            Container(
              height: 280,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: topRatedMovieList.length,
                itemBuilder: (context, i) {
                    return TopRatedListItem(index: i);

                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class RowTwoSeperate extends StatelessWidget {
  
  final String mainText;
  
  const RowTwoSeperate({required this.mainText});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Text(
               mainText,
               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
             ),
             TextButton(onPressed: () {}, child: Text("View All"))
           ],
         ),
    );
  }
}

