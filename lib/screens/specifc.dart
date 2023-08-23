import 'package:assigned/components/card.dart';
import 'package:assigned/components/upper.dart';
import 'package:assigned/data/data.dart';
import 'package:flutter/material.dart';

class DetailsS extends StatefulWidget {
  const DetailsS(
      {required this.title,
      required this.sub,
      required this.image,
      required this.price,
      super.key});
  final String title;
  final String sub;
  final String image;
  final String price;

  @override
  State<DetailsS> createState() => _DetailsSState();
}

class _DetailsSState extends State<DetailsS> {
  @override
  Widget build(BuildContext context) {
    int val = int.parse(widget.price);
    double curr = 0;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyContainer(
              image: widget.image,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(widget.title),
            const SizedBox(
              height: 20,
            ),
            Text(
              widget.sub,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(
              height: 20,
            ),
            Text("Rs. ${widget.price} /Day",
                style: const TextStyle(color: Colors.orange, fontSize: 15)),
            Slider(
              value: curr,
              divisions: 4,
              min: 0,
              max: 100,
              activeColor: Colors.orange,
              onChanged: (value) {
                setState(() {
                  // val = val * value.toInt();
                  curr = value;
                });
              },
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Daily"),
                  Text("Weekly"),
                  Text("Monthly"),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text("Description", style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text.",
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text("Seller Information",
                style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 20,
            ),
            Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                child: Container(
                  height: 160,
                  child: const Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 36.0, vertical: 8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=464&q=80"),
                            ),
                            Text("Ram Prasad",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold)),
                            Icon(Icons.arrow_forward)
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Icon(Icons.place),
                                Text("232, MuradPur, Uttar Pradesh")
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("       100119"),
                                Text(
                                  "View Profile",
                                  style: TextStyle(color: Colors.orange),
                                )
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(child: Text("Contact")),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Related Products",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            CardList(lis: cardlis),
            const SizedBox(
              height: 20,
            ),
            const Center(
              child: Text(
                "view More",
                style: TextStyle(color: Colors.orange, fontSize: 16),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
