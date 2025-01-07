import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GroupEvent extends StatefulWidget {
  const GroupEvent({super.key});

  @override
  State<GroupEvent> createState() => _GroupEventState();
}

class _GroupEventState extends State<GroupEvent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Spacer(), // Pushes the button to the bottom
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SizedBox(
              width: double.infinity, // Full-width button
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return groupevents();
                      },
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 16), // Adjust height
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min, // Ensures icon and text are close
                  mainAxisAlignment: MainAxisAlignment.center, // Centers content
                  children: [
                    Icon(Icons.add, size: 20),
                    SizedBox(width: 8), // Adds spacing between icon and text
                    Text(
                      "Group Event",
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class groupevents extends StatefulWidget {
  const groupevents({super.key});

  @override
  State<groupevents> createState() => _groupeventsState();
}

class _groupeventsState extends State<groupevents> {
  final TextEditingController _searchController = TextEditingController();
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
        _filteredIndexes = List<int>.generate(group.length, (index) => index);
      } else {
        // Filter items based on the query
        _filteredIndexes = List<int>.generate(group.length, (index) => index)
            .where((index) =>
            group[index].toLowerCase().contains(query.toLowerCase()))
            .toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              "CANCEL",
              style: TextStyle(color: Colors.black),
            ),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Aligns items to the start
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Text(
              "Choose group",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              textAlign: TextAlign.start, // Ensures alignment to the start
            ),
          ),
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
                trailing: IconButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) { return FacebookEventPage(groupName: group[index], image: image[index],); }));
                }, icon: Text('>',style: TextStyle(fontSize: 20),)),
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

final List<String> group = [
  "bike Pranthanmar",
  "Toyota fortuner",
  "Job in Kerala",
  "Malayalam movies",
  "Marvel",
  "All kerala used cars",
  "bike Pranthanmar2",
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

class FacebookEventPage extends StatelessWidget {
  final String groupName;
  final String image;

  const FacebookEventPage({super.key, required this.groupName, required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Facebook Event"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(image: AssetImage("$image",),fit: BoxFit.cover)
          
          
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Edit Event for: $groupName",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  labelText: "start date and time",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  labelText: "Event Name",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: TextEditingController(text: "Group.$groupName"), // Set constant text
                decoration: InputDecoration(

                  border: OutlineInputBorder(),
                  labelStyle: TextStyle(color: Colors.black), // Set label text color
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black), // Normal border color
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black), // Border color when disabled
                  ),
                ),
                style: TextStyle(color: Colors.black), // Text color
                enabled: false, // Make the field non-editable
              ),


              SizedBox(height: 50),
              TextField(
                decoration: InputDecoration(
                  labelText: "Event Description",
                  border: OutlineInputBorder(),
                ),
                maxLines: 4,
              ),

              SizedBox(height: 100),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 16), // Adjust height
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
          
                  ),
                  onPressed: () {
                    // Save event logic
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Event saved!")),
                    );
                  },
                  child: Text("Create Event"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
