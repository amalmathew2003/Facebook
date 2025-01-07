import 'package:face/group/event.dart';
import 'package:face/group/post.dart';
import 'package:face/group/yourgroup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Discover.dart';
import 'group_event.dart';

class Group extends StatefulWidget {
  const Group({super.key});

  @override
  State<Group> createState() => _GroupState();
}

class _GroupState extends State<Group> with SingleTickerProviderStateMixin {
  late TabController _tab;

  @override
  void initState() {
    super.initState();
    _tab = TabController(length: 4, vsync: this); // Initialize TabController
  }

  @override
  void dispose() {
    _tab.dispose(); // Dispose TabController
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Groups"),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.add_circle)),
          IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
          IconButton(onPressed: () {}, icon: Icon(Icons.search_rounded)),
        ],
        bottom: TabBar(
          controller: _tab, // Attach TabController
          isScrollable:true, // Makes the TabBar scrollable if the tabs overflow
          tabs: [
            Tab(text: "Your Group"),
            Tab(text: "Post"),
            Tab(text: "Discover"),
            Tab(text: "Events"),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tab, // Attach TabController
        children: [
          YourGroup(),
          Post(),
          Discover(),
          GroupEvent(),
        ],
      ),
    );
  }
}
