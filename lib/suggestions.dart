import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class suggestions extends StatelessWidget {


  List<String>name=[ 'John Doe',
    'Jane Smith',
    'Michael Brown',
    'Emily Davis'];
  List<String>url=[
    "assets/images/person1.1.jpg",
    "assets/images/person2.jpg",
    "assets/images/person3.jpg",
    "assets/images/person4.jpg"
  ];

   List<String> mutualFriends = [
    '2 mutual friends',
    '4 mutual friends',
    '6 mutual friends',
    '1 mutual friend'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Suggestions'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Implement search functionality
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Text(
                "People you may know",
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),

          SizedBox(height: 10),
          // Friend request section

          SizedBox(height: 10),
          // Friends List
          Expanded(
            child: ListView.builder(
              itemCount: name.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(url[index]),
                    ),
                    title: Text(name[index]),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(mutualFriends[index]),
                        SizedBox(height: 8), // Space between subtitle text and button
                        Row(
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                // Button action here (e.g., add friend)
                              },
                              child: Text(
                                'confirm',
                                style: TextStyle(color: Colors.white),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue,
                                minimumSize: Size(120, 35),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            ),
                            SizedBox(width: 20,),
                            ElevatedButton(
                              onPressed: () {
                                // Button action here (e.g., add friend)
                              },
                              child: Text(
                                'Delete',
                                style: TextStyle(color: Colors.white),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black45,
                                minimumSize: Size(120, 35),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
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
