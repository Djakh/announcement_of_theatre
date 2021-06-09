import 'package:flutter/material.dart';

class DetailImage extends StatelessWidget {
  final imageUrl;
  final id;
  
  const DetailImage({required this.imageUrl, required this.id});
  @override
  Widget build(BuildContext context) {
    return   Center(
              child: Card(
                elevation: 5,
                child: Hero(
                  tag: id,
                                  child: Container(
                    height: 450,
                    width: 300,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                            image: NetworkImage(
                                imageUrl),
                            fit: BoxFit.cover)),
                  ),
                ),
              ),
            );
  }
}