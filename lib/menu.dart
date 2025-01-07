import 'package:face/group/group_event.dart';
import 'package:face/profile.dart';
import 'package:flutter/material.dart';

import 'feed.dart';
import 'friends.dart';
import 'group/event.dart';
import 'group/group.dart';
import 'marketplace.dart';

class MenuPage extends StatefulWidget {
  final String fullName;

  MenuPage({required this.fullName});

  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  bool _showAllItems = false; // Track whether to show all items

  @override
  Widget build(BuildContext context) {
    // List of all menu items
    final List<MenuItem> allMenuItems = [
      MenuItem(
        icon: Icons.group,
        title: "Groups",
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (BuildContext context) {
            return Group();
          }));
        },
      ),
      MenuItem(
        icon: Icons.feed,
        title: "Feeds",
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (BuildContext context) {
                return FeedsPage();
              }));
        },
      ),
      MenuItem(
        icon: Icons.search,
        title: "Find friends",
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (BuildContext context) {
            return FriendsPage();
          }));
        },
      ),
      MenuItem(
        icon: Icons.flag,
        title: "Pages",
        onTap: () {},
      ),
      MenuItem(
        icon: Icons.memory,
        title: "Memories",
        onTap: () {},
      ),
      MenuItem(
        icon: Icons.video_library,
        title: "Video",
        onTap: () {},
      ),
      MenuItem(
        icon: Icons.event,
        title: "Events",
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (BuildContext context) {
            return EventsPage();
          }));
        },
      ),
      MenuItem(
        icon: Icons.person,
        title: "Avatars",
        onTap: () {},
      ),
      MenuItem(
        icon: Icons.cake,
        title: "Birthdays",
        onTap: () {},
      ),
      MenuItem(
        icon: Icons.sports_esports,
        title: "Gaming",
        onTap: () {},
      ),
      MenuItem(
        icon: Icons.store,
        title: "Marketplace",
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (BuildContext context) {
            return MarketplacePage();
          }));
        },
      ),
      MenuItem(
        icon: Icons.messenger_outline,
        title: "Messenger Kids",
        onTap: () {},
      ),
      MenuItem(
        icon: Icons.movie,
        title: "Reels",
        onTap: () {},
      ),
      MenuItem(
        icon: Icons.bookmark,
        title: "Saved",
        onTap: () {},
      ),
    ];

    // Show limited menu items or all based on _showAllItems
    final menuItemsToDisplay =
        _showAllItems ? allMenuItems : allMenuItems.sublist(0, 4);

    return Scaffold(
      body: SingleChildScrollView(
        // Make the whole page scrollable
        child: Column(
          children: [
            Row(
              children: [
                Text('Menu', style: TextStyle(fontSize: 24, color: Colors.black)),
                SizedBox(width: 289,),
                IconButton(
                  icon: Icon(Icons.settings, color: Colors.black),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.search, color: Colors.black),
                  onPressed: () {},
                ),
              ],
            ),


            // Profile section
            ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("assets/images/person1.1.jpg"),
              ),
              title: Text(
                "Amal Mathew",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              subtitle: Text(
                "See your profile",
                style: TextStyle(color: Colors.grey),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) { return Profile(); }));
              },
            ),

            // Grid layout for menu options
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: GridView.count(
                shrinkWrap:
                    true, // Makes grid view not take up the entire height
                crossAxisCount: 2,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                physics:
                    NeverScrollableScrollPhysics(), // Disable scrolling within GridView
                children: menuItemsToDisplay,
              ),
            ),
            // See More button
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 14),
                      backgroundColor: Colors.grey[500]),
                  onPressed: () {
                    setState(() {
                      _showAllItems = !_showAllItems; // Toggle the state
                    });
                  },
                  child: Text(
                    _showAllItems ? "See less" : "See more",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ),
            // Bottom settings
            ListTile(
              leading: Icon(Icons.help, color: Colors.grey),
              title: Text("Help & support"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.settings, color: Colors.grey),
              title: Text("Settings & privacy"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.accessibility, color: Colors.grey),
              title: Text("Also from Meta"),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  MenuItem({required this.icon, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 40, color: Colors.blue),
          SizedBox(height: 8),
          Text(title, textAlign: TextAlign.center),
        ],
      ),
    );
  }
}
