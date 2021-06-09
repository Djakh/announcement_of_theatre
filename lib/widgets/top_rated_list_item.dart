import 'package:announcement_of_theatre/screens/movie_details_screen.dart';

import '../model/movie.dart';
import 'package:flutter/material.dart';

class TopRatedListItem extends StatelessWidget {

  final int index;

const TopRatedListItem({required this.index});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      padding: const EdgeInsets.all(10),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed(MovieDetailsScreen.routeName, arguments: {
    "id": topRatedMovieList[index].id,
    "title": topRatedMovieList[index].title,
    "imageUrl": topRatedMovieList[index].imageUrl,
    "description": topRatedMovieList[index].description,
    "rating": topRatedMovieList[index].rating,
    "year": topRatedMovieList[index].year,
    "duration": topRatedMovieList[index].duration

          });
        },
              child: Column(
          children: [
            Card(
              elevation: 10.0,
                        child: Hero(
                          tag:  topRatedMovieList[index].id,
                                                  child: Container(
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              topRatedMovieList[index].imageUrl))),
              ),
                        ),
            ),
            Text(
              topRatedMovieList[index].title,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
