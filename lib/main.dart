import 'package:face/group/group.dart';
import 'package:face/login.dart';
import 'package:face/video.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'friends.dart';
import 'home.dart';
import 'marketplace.dart';
import 'menu.dart';
import 'notification.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: SplashScreen(), // Set the SplashScreen as the first screen
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Timer to navigate after 3 seconds
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => login()), // HomeScreen is the next screen
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image(
        image: AssetImage('assets/images/flogo.png'),
        fit: BoxFit.cover,
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;  // TabController to manage tabs
  String fullName = "";  // You can store the user full name here.

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 6, vsync: this);  // Set the number of tabs
  }

  @override
  void dispose() {
    _tabController.dispose();  // Dispose TabController when done
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white, // AppBar background color
        title: Text(
          'Facebook',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.add_circle, color: Colors.black),
            onPressed: () {
              // Add functionality here for add button
            },
          ),
          IconButton(
            icon: Icon(Icons.search, color: Colors.black),
            onPressed: () {
              // Add functionality here for search button
            },
          ),
          IconButton(
            icon: Icon(Icons.message_rounded, color: Colors.black),
            onPressed: () {
              // Add functionality here for message button
            },
          ),
        ],
        // Wrap TabBar in a colored Container for custom background
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50), // Set TabBar height
          child: Container(
            color: Colors.white, // TabBar background color
            child: TabBar(
              controller: _tabController,
              tabs: [
                Tab(icon: Icon(Icons.home)),
                Tab(icon: Icon(Icons.video_call)),
                Tab(icon: Icon(Icons.group)),
                Tab(icon: Icon(Icons.shop)),
                Tab(icon: Icon(Icons.notifications)),
                Tab(icon: Icon(Icons.menu)),
              ],
              labelColor: Colors.blue, // Active tab color
              unselectedLabelColor: Colors.black, // Inactive tabs color
              indicatorColor: Colors.blue, // Active tab underline color
              indicatorWeight: 3.0, // Thickness of the underline
            ),
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Home(),
          video(),
          FriendsPage(),
          MarketplacePage(),
          NotificationsPage(),
          MenuPage(fullName: fullName), // Pass the full name to the MenuPage
        ],
      ),
    );
  }
}
