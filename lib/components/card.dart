import 'package:assigned/screens/specifc.dart';
import 'package:flutter/material.dart';

class CardList extends StatelessWidget {
  final List<Map> lis;

  CardList({required this.lis});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: lis.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            behavior: HitTestBehavior
                .translucent, // Allow touch events to pass through
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Details(
                    title: lis[index]['title'],
                    sub: lis[index]['sub'],
                    image: lis[index]['url'],
                  ),
                ),
              );
            },
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              margin: EdgeInsets.symmetric(horizontal: 8),
              elevation: 4,
              child: Container(
                height: 200,
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailsS(
                                    title: lis[index]['title'],
                                    sub: lis[index]['sub'],
                                    image: lis[index]['url'],
                                    price : lis[index]['price']),
                              ));
                          // You can add specific onTap behavior here if needed
                        },
                        child: Image.network(
                          lis[index]['url'],
                          height: 140,
                          width: 200,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            lis[index]['title'],
                            style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            lis[index]['sub'],
                            style: TextStyle(fontSize: 16, color: Colors.brown),
                          ),
                          SizedBox(height: 6),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  const Icon(
                                    Icons.place,
                                    color: Colors.orange,
                                  ),
                                  SizedBox(width: 4),
                                  Text(
                                    "${lis[index]['dis']} km",
                                    style:
                                        const TextStyle(color: Colors.orange),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Text(
                                "Rs. ${lis[index]['price']} /day",
                                style: const TextStyle(color: Colors.orange),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class Details extends StatelessWidget {
  final String title;
  final String sub;
  final String image;

  Details({required this.title, required this.sub, required this.image});

  @override
  Widget build(BuildContext context) {
    // Build your details screen using the provided data
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(image),
            Text(title),
            Text(sub),
          ],
        ),
      ),
    );
  }
}
