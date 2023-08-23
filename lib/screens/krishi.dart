import 'package:assigned/components/rent.dart';
import 'package:flutter/material.dart';

class Krishi extends StatelessWidget {
  const Krishi({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0.0,
          centerTitle: true,
          title: Text(
            "Krishi Bazaar",
            style: TextStyle(color: Colors.orange),
          ),
          leading: const Icon(Icons.menu),
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.black,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                  horizontal: 16), // Adjust margin as needed
              decoration: BoxDecoration(
                color: Colors.white, // Color of the rounded container
                borderRadius:
                    BorderRadius.circular(30), // Adjust radius as needed
              ),
              child: TabBar(
                labelColor: Colors.white,
                unselectedLabelColor: Colors.black,
                indicator: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(30), // Same radius as the container
                  color: Colors.orange, // Color of the indicator
                ),
                tabs: [
                  Tab(text: 'All'),
                  Tab(text: 'Buy'),
                  Tab(text: 'Rent'),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Container(
                    child: Center(
                      child: Text("All"),
                    ),
                  ),
                  Container(
                    child: Center(
                      child: Text("Buy"),
                    ),
                  ),
                  Container(
                    child: RentComponent(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
