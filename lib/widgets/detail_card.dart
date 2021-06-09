import 'package:flutter/material.dart';

class DetailCard extends StatelessWidget {
 final Icon icon;
  final title;


 const DetailCard({required this.icon, required this.title});
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[850],
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Column(
          children: [
            icon,
            SizedBox(height: 10),
            Text(
             title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            )
          ],
        ),
      ),
    );
  }
}
