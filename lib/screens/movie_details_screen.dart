import 'package:announcement_of_theatre/widgets/detail_card.dart';
import 'package:announcement_of_theatre/widgets/movie_detail_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MovieDetailsScreen extends StatelessWidget {
  static const routeName = "/movie_details_screen";


  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Column(
          children: [
            DetailImage(imageUrl: routeArgs["imageUrl"], id: routeArgs["id"],),
            SizedBox(height: 20),
            DetailTitle(title: routeArgs["title"]),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DetailCard(
                  icon: Icon(
                    Icons.timer,
                    size: 45,
                    color: Colors.yellow,
                  ),
                  title: routeArgs["duration"],
                ),
                DetailCard(
                  icon: Icon(
                    Icons.calendar_today,
                    size: 45,
                    color: Colors.yellow,
                  ),
                  title: routeArgs["year"],
                ),
                DetailCard(
                  icon: Icon(
                    Icons.star,
                    size: 45,
                    color: Colors.yellow,
                  ),
                  title: routeArgs["rating"],
                ),
              ],
            ),
            SizedBox(height: 20),
            DetailDescription(description: routeArgs["description"])
          ],
        ),
      ),
      bottomNavigationBar: Row(
        children: [
          WatchTrailerButton(),
          BuyNowButton()
        ],
      ),
    );
  }
}

class BuyNowButton extends StatelessWidget {
  const BuyNowButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RaisedButton(
        padding: const EdgeInsets.only(top: 20, bottom: 20),
        onPressed: () {},
        color: Colors.yellowAccent,
        textColor: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.check_circle_outline),
            Container(height: 5, width: 5,),
            Text(
              "Buy Now",
              style: TextStyle(fontSize: 18),
            )
          ],
        ),
      ),
    );
  }
}

class WatchTrailerButton extends StatelessWidget {
  const WatchTrailerButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RaisedButton(
        padding: const EdgeInsets.only(top: 20, bottom: 20),
        onPressed: () {},
        color: Colors.pink,
        textColor: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.play_circle_outlined),
            Text(
              "Watch Trailer",
              style: TextStyle(fontSize: 18),
            )
          ],
        ),
      ),
    );
  }
}

class DetailDescription extends StatelessWidget {
 final description;

  const DetailDescription({Key? key, required this.description}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      description,
      style: TextStyle(
        fontSize: 18,
        height: 1.5,
      ),
      textAlign: TextAlign.justify,
    );
  }
}

class DetailTitle extends StatelessWidget {
  
  final title;

  const DetailTitle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 28, letterSpacing: 2.5),
    );
  }
}
