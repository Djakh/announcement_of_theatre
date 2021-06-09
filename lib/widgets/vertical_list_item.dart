import 'package:announcement_of_theatre/model/movie.dart';
import 'package:announcement_of_theatre/screens/movie_details_screen.dart';
import 'package:flutter/material.dart';

class VerticalListItem extends StatelessWidget {
  final int index;

const VerticalListItem({required this.index});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
       onTap: () {
          Navigator.of(context).pushNamed(MovieDetailsScreen.routeName, arguments: {
    "id": bestMovieList[index].id,
    "title": bestMovieList[index].title,
    "imageUrl": bestMovieList[index].imageUrl,
    "description": bestMovieList[index].description,
    "rating": bestMovieList[index].rating,
    "year": bestMovieList[index].year,
    "duration": bestMovieList[index].duration

          });
        },
          child: Card(
            color: Colors.grey[900],
          elevation: 5,
          child: Row(
            children: [
              Hero(
                  tag: bestMovieList[index].id,
                child: Container(
                    height: 150,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(5),
                            topLeft: Radius.circular(5)),
                        image: DecorationImage(
                          image: NetworkImage(
                            bestMovieList[index].imageUrl,
                          ),
                          fit: BoxFit.cover,
                        )),
                  ),
                ),
              Container(
                padding: const EdgeInsets.all(10.0),
                height: 150,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      bestMovieList[index].title,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10.0),
                    Container(
                      width: 190,
                      child: Text(
                        bestMovieList[index].description,
                        style: TextStyle (fontSize: 12),
                        textAlign: TextAlign.justify,
                       
                      ),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}