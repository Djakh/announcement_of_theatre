import 'package:announcement_of_theatre/screens/movie_details_screen.dart';

import '../model/movie.dart';
import 'package:flutter/material.dart';

class HorizontalListItem extends StatelessWidget {
  final int index;

  const HorizontalListItem({required this.index});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      padding: const EdgeInsets.all(10),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context)
              .pushNamed(MovieDetailsScreen.routeName, arguments: {
            "id": movieList[index].id,
            "title": movieList[index].title,
            "imageUrl": movieList[index].imageUrl,
            "description": movieList[index].description,
            "rating": movieList[index].rating,
            "year": movieList[index].year,
            "duration": movieList[index].duration
          });
        },
        child: Column(
          children: [
            Card(
              elevation: 10.0,
              child: Hero(
                tag: movieList[index].id,
                              child: Container(
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(movieList[index].imageUrl))),
                ),
              ),
            ),
            Text(
              movieList[index].title,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
