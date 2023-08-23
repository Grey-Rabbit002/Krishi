import 'package:assigned/components/cardview.dart';
import 'package:flutter/material.dart';

class RentComponent extends StatefulWidget {
  const RentComponent({Key? key}) : super(key: key);

  @override
  _RentComponentState createState() => _RentComponentState();
}

class _RentComponentState extends State<RentComponent> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 4,
      child: Scaffold(
        body: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      border: InputBorder.none,
                      hintText: 'Search Product Name'),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                  horizontal: 4), // Adjust margin as needed
              decoration: BoxDecoration(
                color: Colors.white, // Color of the rounded container
                borderRadius:
                    BorderRadius.circular(30), // Adjust radius as needed
              ),
              child: TabBar(
                onTap: (index) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
                labelColor: Colors.white,
                unselectedLabelColor: Colors.black,
                indicator: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(15), // Same radius as the container
                  color: Colors.brown, // Color of the indicator
                ),
                tabs: [
                  Tab(
                    child: _currentIndex == 0
                        ? const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.integration_instructions),
                              Text('Items'),
                            ],
                          )
                        : const Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.integration_instructions),
                              Text('Items'),
                            ],
                          ),
                  ),
                  Tab(
                    child: _currentIndex == 1
                        ? const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.emoji_transportation),
                              Text('Trans'),
                            ],
                          )
                        : const Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.emoji_transportation),
                              Text('Trans'),
                            ],
                          ),
                  ),
                  Tab(
                    child: _currentIndex == 2
                        ? const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.storage),
                              Text('Storage'),
                            ],
                          )
                        : const Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.storage),
                              Text('Storage'),
                            ],
                          ),
                  ),
                  Tab(
                    child: _currentIndex == 3
                        ? const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.gamepad),
                              Text('Equip'),
                            ],
                          )
                        : const Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.gamepad),
                              Text('Equip'),
                            ],
                          ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  CardView(),
                  Container(
                    child: Center(
                      child: Text("Storage"),
                    ),
                  ),
                  Container(
                    child: Center(
                      child: Text("Transport"),
                    ),
                  ),
                  Container(
                    child: Center(
                      child: Text("Equipment"),
                    ),
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
