import 'package:flutter/material.dart';

class EventsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Events"),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(kToolbarHeight),
            child: Row(
              children: [
                Expanded(
                  child: TabBar(
                    // isScrollable: true, // Allowing horizontal scroll of tabs if needed
                    indicatorColor: Colors.white,
                    indicatorSize: TabBarIndicatorSize.label, // Align indicator to label size
                    indicatorPadding: EdgeInsets.symmetric(horizontal: 4), // Reduce space between tabs and indicator
                    labelPadding: EdgeInsets.symmetric(horizontal: 4), // Reduce padding between tab labels
                    tabs: [
                      Tab(text: "For you"),
                      Tab(text: "Local"),
                      Tab(text: "This week"),
                      Tab(text: "Friends"),
                      Tab(text: "Following"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.calendar_today),
              onPressed: () {
                print("Calendar icon pressed");
              },
            ),
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                print("Add icon pressed");
              },
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                print("Search icon pressed");
              },
            ),
          ],
        ),
        body: TabBarView(
          children: [
            EventsList(),
            Center(child: Text("Local Events")),
            Center(child: Text("This Week")),
            Center(child: Text("Friends' Events")),
            Center(child: Text("Following Events")),
          ],
        ),
      ),
    );
  }
}

class EventsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          EventCard(
            imageUrl: "assets/images/event1.jpg",
            title: "Load The Box BookFair",
            date: "3 Dec to 8 Dec 2024",
            location: "Forum Mall, Kochi",
            interested: "2.6K interested",
            going: "51 going",
            happeningNow: true,
          ),
          EventCard(
            imageUrl: "assets/images/event2.jpg",
            title: "All Things Bright Christmas Carnival '24",
            date: "6 Dec to 8 Dec 2024",
            location: "Kaloor Stadium, Kochi",
            interested: "1.2K interested",
            going: "102 going",
            happeningNow: false,
          ),
        ],
      ),
    );
  }
}

class EventCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String date;
  final String location;
  final String interested;
  final String going;
  final bool happeningNow;

  const EventCard({
    required this.imageUrl,
    required this.title,
    required this.date,
    required this.location,
    required this.interested,
    required this.going,
    this.happeningNow = false,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Event Image
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
                child: Image.asset(
                  imageUrl,
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              if (happeningNow)
                Positioned(
                  top: 8,
                  left: 8,
                  child: Container(
                    color: Colors.red,
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    child: Text(
                      "Happening now",
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              Positioned(
                top: 8,
                right: 8,
                child: IconButton(
                  icon: Icon(Icons.close, color: Colors.white),
                  onPressed: () {
                    print("Close button pressed");
                  },
                ),
              ),
            ],
          ),
          // Event Details
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4),
                Text(date, style: TextStyle(color: Colors.grey[700])),
                Text(location, style: TextStyle(color: Colors.grey[700])),
                SizedBox(height: 8),
                Row(
                  children: [
                    Text(interested, style: TextStyle(color: Colors.grey[700])),
                    SizedBox(width: 16),
                    Text(going, style: TextStyle(color: Colors.grey[700])),
                  ],
                ),
              ],
            ),
          ),
          // Action Buttons
          Divider(height: 1),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton.icon(
                onPressed: () {
                  print("Interested button pressed");
                },
                icon: Icon(Icons.star_border, color: Colors.blue),
                label: Text("Interested"),
              ),
              IconButton(
                icon: Icon(Icons.share, color: Colors.blue),
                onPressed: () {
                  print("Share button pressed");
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
