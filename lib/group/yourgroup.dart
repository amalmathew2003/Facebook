import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class YourGroup extends StatefulWidget {
  const YourGroup({super.key});

  @override
  State<YourGroup> createState() => _YourGroupState();
}

class _YourGroupState extends State<YourGroup> {
  // Controller for search input
  final TextEditingController _searchController = TextEditingController();

  // Full data list
  final List<String> group = [
    "bike Pranthanmar",
    "Toyota fortuner",
    "Job in Kerala",
    "Malayalam movies",
    "Marvel",
    "All kerala used cars",
    "bike Pranthanmar2",
  ];

  final List<String> subtitle = [
    "189.4k members",
    "199.4k members",
    "200.6k members",
    "119.4k members",
    "399.4k members",
    "200.4k members",
    "183.4k members",
  ];

  final List<String> image = [
    "assets/images/group1.jpg",
    "assets/images/group2.jpg",
    "assets/images/group3.png",
    "assets/images/group4.jpg",
    "assets/images/group5.jpg",
    "assets/images/group6.jpg",
    "assets/images/group7.jpg",
  ];

  // Filtered list for displaying search results
  List<int> _filteredIndexes = [];

  @override
  void initState() {
    super.initState();
    // Initially show all items
    _filteredIndexes = List<int>.generate(group.length, (index) => index);
  }

  void _filterGroups(String query) {
    setState(() {
      if (query.isEmpty) {
        // If query is empty, show all items
        _filteredIndexes =
        List<int>.generate(group.length, (index) => index);
      } else {
        // Filter items based on the query
        _filteredIndexes = List<int>.generate(group.length, (index) => index)
            .where((index) => group[index]
            .toLowerCase()
            .contains(query.toLowerCase()))
            .toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Header Row
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Most visited",
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.w800),
                ),
              ),
              Spacer(),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Sort",
                  style: TextStyle(color: Colors.blue),
                ),
              )
            ],
          ),
          // Search Bar
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 50,
              child: TextField(
                controller: _searchController,
                onChanged: _filterGroups,
                decoration: InputDecoration(
                  hintText: "Search groups...",
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  filled: true,
                  fillColor: Colors.grey[350],
                ),
              ),
            ),
          ),
          // Create Group Button
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.add_circle_outline_rounded,
                    size: 35,
                  ),
                ),
                SizedBox(width: 9),
                Text(
                  "Create a group",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
          SizedBox(height: 10),
          // List View
          Expanded(
            child: ListView.separated(
              itemCount: _filteredIndexes.length,
              itemBuilder: (BuildContext context, int index) {
                int originalIndex = _filteredIndexes[index];
                return ListTile(
                  leading: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(image[originalIndex]),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                  title: Text(
                    group[originalIndex],
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  subtitle: Text(subtitle[originalIndex]),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(height: 10);
              },
            ),
          ),
        ],
      ),
    );
  }
}
