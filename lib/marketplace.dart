

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MarketplacePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Marketplace", style: TextStyle(fontSize: 22)),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.person)),
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Buttons Row
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.edit,color: Colors.white,),
                    label: Text("Sell",style: TextStyle(color: Colors.white)),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[850],
                    ),
                  ),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.category,color: Colors.white,),
                    label: Text("Categories",style: TextStyle(color: Colors.white),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[850],
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Trending Section

          // Today's Picks Section
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                Text("Today's picks",style: TextStyle(fontWeight: FontWeight.w800),),
                SizedBox(width: 160),
                Icon(Icons.location_on, color: Colors.blue),
                SizedBox(width: 4),
                Text("Koratty · 15 km",
                    style: TextStyle(color: Colors.blue, fontSize: 14)),
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(8.0),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                childAspectRatio: 0.9,
              ),
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                return Card(
                  color: Colors.grey[900],
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Image.asset(
                          item['image']!,
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item['price']!,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(width: 11,),
                            Text(
                              item['title']!,
                              style: TextStyle(
                                color: Colors.grey[400],
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

final List<Map<String, String>> items = [
  {'image': 'assets/images/bike.jpg', 'price': '₹ 20,000', 'title': 'Ninja z900'},
  {'image': 'assets/images/splenoder.jpg', 'price': '₹ 35,000', 'title': 'Splendor'},
  {'image': 'assets/images/fur.jpg', 'price': '₹ 10,000', 'title': 'sofa'},
  {'image': 'assets/images/tv.jpg', 'price': '₹ 22,000', 'title': 'tv'},
  {'image': 'assets/images/fossil.jpg', 'price': '₹ 10,000', 'title': 'Fossil Watch'},
  {'image': 'assets/images/honda.jpg', 'price': '₹ 220,000', 'title': 'Honda Civic'},
];
