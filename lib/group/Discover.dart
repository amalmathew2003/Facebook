import 'package:flutter/material.dart';

class Discover extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(  // This makes the entire screen scrollable
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),  // Add some padding around the text
              child: Text(
                "Suggested for you",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),
            GridView.builder(
              // Ensuring the grid is inside an Expanded widget, so it takes up remaining space
              shrinkWrap: true,  // Prevents overflow when used inside SingleChildScrollView
              physics: NeverScrollableScrollPhysics(), // Disable the grid scroll since SingleChildScrollView is doing the scrolling
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Number of columns
                crossAxisSpacing: 8.0, // Space between columns
                mainAxisSpacing: 8.0, // Space between rows
                childAspectRatio: 0.75, // Adjust card height
              ),
              itemCount: groups.length,
              itemBuilder: (context, index) {
                return Stack(
                  children: [
                    Card(
                      color: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(
                              groups[index]['image']!,
                              height: 120,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              groups[index]['title']!,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              groups[index]['subtitle']!,
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey[400],
                              ),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              onPressed: () {
                                print("Join pressed for ${groups[index]['title']}");
                              },
                              child: Text("Join"),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 8,
                      right: 8,
                      child: InkWell(
                        onTap: () {
                          print("Close button pressed for ${groups[index]['title']}");
                        },
                        child: CircleAvatar(
                          backgroundColor: Colors.black.withOpacity(0.7),
                          radius: 16,
                          child: Icon(
                            Icons.close,
                            color: Colors.white,
                            size: 18,
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

List<Map<String, String>> groups = [
  {
    "image": "assets/images/group1.jpg",
    "title": "bike lovers",
    "subtitle": "Public group · 58K members",
  },
  {
    "image": "assets/images/group2.jpg",
    "title": "car lover in kerala",
    "subtitle": "Public group · 4.2K members",
  },
  {
    "image": "assets/images/group3.png",
    "title": "kerala jobs",
    "subtitle": "Private group · 189K members",
  },
  {
    "image": "assets/images/group4.jpg",
    "title": "malayalam moves",
    "subtitle": "Public group · 66K members",
  },
  {
    "image": "assets/images/group5.jpg",
    "title": "marvel fans ",
    "subtitle": "Public group · 200K members",
  },
  {
    "image": "assets/images/group6.jpg",
    "title": "car lover in kerala",
    "subtitle": "Public group · 4.2K members",
  },
  {
    "image": "assets/images/group7.jpg",
    "title": "harley davidson",
    "subtitle": "Private group · 189K members",
  },
  {
    "image": "assets/images/honda.jpg",
    "title": "honda city",
    "subtitle": "Public group · 66K members",
  },
];
