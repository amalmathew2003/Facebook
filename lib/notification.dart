import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationsPage extends StatefulWidget {
  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Removes back arrow
        title: Text("Notifications",
            style: TextStyle(
                color: Colors.black)), // Set AppBar title color to black
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search,
                color: Colors.black), // Set search icon color to black
          ),
        ],
        backgroundColor: Colors.white, // Set background color to white
      ),
      body: SingleChildScrollView(
        // Wrap the entire body in SingleChildScrollView to make it scrollable
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "Earlier",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ],
              ),
            ),
            // ListView.builder (no Expanded, just let it take as much space as it needs)
            ListView.builder(
              shrinkWrap:
                  true, // Allows ListView to take only as much space as it needs
              physics:
                  NeverScrollableScrollPhysics(), // Disable ListView's own scrolling
              itemCount: text.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(urlc[index]),
                  ),
                  title: Text(text[index]),
                  subtitle: Text(days[index]),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.more_horiz),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

List<String> text = [
  "Check out this reel from a creator similar to those you've interacted with",
  "Check out these reels picked for you.",
  "Watch this reel picked just for you.",
  "You have a new friend suggestion: Sini Abhi",
  "Check out this reel from a creator similar to those you've interacted with",
  "Watch this reel suggested for you.",
  "Watch this reel suggested for you.",
  "Check out this reel from a creator similar to those you've interacted with",
  "Check out this reel from a creator similar to those you've interacted with",
  "Check out this reel from a creator similar to those you've interacted with",
  "Check out this reel from a creator similar to those you've interacted with",
  "Check out this reel from a creator similar to those you've interacted with",
];

List<String> days = [
  "4d",
  "5w",
  "10w",
  "15w",
  "30d",
  "49d",
  "51d",
  "60d",
  "30d",
  "49d",
  "51d",
  "60d"
];
List<String> urlc = [
  "assets/images/p1.jpg",
  "assets/images/p2.jpg",
  "assets/images/p3.jpg",
  "assets/images/p4.jpg",
  "assets/images/p5.jpg",
  "assets/images/person2.jpg",
  "assets/images/person3.jpg",
  "assets/images/person4.jpg",  "assets/images/p5.jpg",
  "assets/images/person2.jpg",
  "assets/images/person3.jpg",
  "assets/images/person4.jpg"
];
