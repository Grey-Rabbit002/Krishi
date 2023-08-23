import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  final String image;
  MyContainer({required this.image});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
            image, // Replace with your image URL
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Align(
        alignment: Alignment.topLeft,
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: RowOfIcons(),
        ),
      ),
    );
  }
}

class RowOfIcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
            // Handle the tap for the first icon
          },
          child: const CircleAvatar(
            radius: 20,
            backgroundColor: Colors.white,
            child: Icon(
              Icons.arrow_back,
              size: 18,
              color: Colors.black,
            ),
          ),
        ),
        SizedBox(width: 20),
        Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
                // Handle the tap for the second icon
              },
              child: const CircleAvatar(
                radius: 20,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.share,
                  size: 18,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(width: 20),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
                // Handle the tap for the third icon
              },
              child: const CircleAvatar(
                radius: 20,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.bookmark_add,
                  size: 18,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
