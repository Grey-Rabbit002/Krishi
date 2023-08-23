import 'package:assigned/components/card.dart';
import 'package:assigned/components/dotlist.dart';
import 'package:assigned/data/data.dart';
import 'package:flutter/material.dart';

class CardView extends StatefulWidget {
  const CardView({super.key});

  @override
  State<CardView> createState() => _CardViewState();
}

class _CardViewState extends State<CardView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            CardList(lis: cardlis),
            const SizedBox(
              height: 20,
            ),
            CardList(lis: cardlis2),
            const SizedBox(
              height: 20,
            ),
            CarouselWithDotsPage(imgData: imgList,),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Top Prodcuts",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            CardList(lis: cardlis),
            const SizedBox(
              height: 20,
            ),
            CardList(lis: cardlis),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
