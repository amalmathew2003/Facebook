import 'package:flutter/material.dart';

import 'friends.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search_rounded)),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none, // Allows the CircleAvatar to overflow the container
              children: [
                // Cover Photo
                Container(
                  height: 250,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://via.placeholder.com/1080x400.png?text=Cover+Photo'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  right: 10, // Position the smaller CircleAvatar in the bottom-right corner
                  child: CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.grey,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.camera,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: -70, // Move half of the CircleAvatar outside the container
                  left: 10, // Adjust the position of the main CircleAvatar
                  child: Stack(
                    children: [
                      CircleAvatar(
                        radius: 70,
                        backgroundColor: Colors.blue,
                      ),
                      Positioned(
                        bottom: 5,
                        right: 5, // Position the smaller CircleAvatar in the bottom-right corner
                        child: CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.grey,
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.camera,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 60),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(width: 10),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Amal Mathew",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(width: 18),
                      Text(
                        "150",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(width: 5),
                      Text(
                        "friends",
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  Divider(thickness: 8),
                  Row(
                    children: [
                      Text(
                        "People you may know",
                        style: TextStyle(fontSize: 17),
                      ),
                      Spacer(),
                      IconButton(onPressed: () {}, icon: Icon(Icons.close))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Text("Add to Story"),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text("Edit Profile"),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Icon(Icons.more_horiz_outlined),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal, // Horizontal scrolling
                    child: Row(
                      children: List.generate(imagee.length, (index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 195,
                            height: 290,
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  top: 0,
                                  child: Container(
                                    width: 200,
                                    height: 200,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage("${imagee[index]}"),
                                          fit: BoxFit.cover),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  right: 5,
                                  top: 5,
                                  child: CircleAvatar(
                                    radius: 15,
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.close, size: 16),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 200,
                                  left: 10,
                                  child: Text("${namee[index]}"),
                                ),
                                Positioned(
                                  top: 220,
                                  left: 10,
                                  child: Text("${friend[index]}"),
                                ),
                                Positioned(
                                  bottom: 6, // Align the button at the bottom
                                  left: 10,
                                  right: 10,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Add friend",
                                      style: TextStyle(color: Colors.blue),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.grey,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Friends",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                      Spacer(),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Find friends",
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text("100 friends"),
                    ],
                  ),
                  SizedBox(
                    height: 300, // Adjust height as needed
                    child: GridView.builder(
                      physics: NeverScrollableScrollPhysics(), // Disable scrolling
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3, // Number of columns
                        crossAxisSpacing: 8.0,
                        mainAxisSpacing: 8.0,
                      ),
                      itemCount: friends.length,
                      itemBuilder: (context, index) {
                        final friend = friends[index];
                        return Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10), // Rounded corners
                              child: Image.asset(
                                friend["image"]!,
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              friend["name"]!,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis, // Truncate overflowed text
                            ),
                          ],
                        );
                      },
                    ),
                  ),

                  ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                      return FriendsPage();
                    }));
                  }, child: Text("See all Friends",style: TextStyle(color: Colors.white),),style: ElevatedButton.styleFrom(backgroundColor: Colors.blue,
                    minimumSize: Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  )),
                  SizedBox(height: 10,),
                  Divider(
                    thickness: 10,
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50, // Define the height of the Stack
                      child: Stack(
                        children: [
                          // CircleAvatar
                          Positioned(
                            left: 0, // Position the avatar
                            child: CircleAvatar(
                              radius: 22,
                              backgroundImage: AssetImage("assets/images/p3.jpg"),
                            ),
                          ),

                          // Text
                          Positioned(
                            left: 55, // Adjust position to the right of the avatar
                            top: 5, // Vertically center-align the text
                            child: Text(
                              "nithin",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),

                          ),
                          Positioned(left: 55,
                              top: 25,
                              child: Text("3 min ago",style: TextStyle(color: Colors.black,fontSize: 12),)),
                          Positioned(right: 0,
                              child: IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,color: Colors.black,)))
                        ],
                      ),
                    ),
                  ),
                  Container(height: 300,
                    width: double.infinity,
                    color: Colors.black,
                    child: Image(image: AssetImage("assets/images/p3.jpg"),fit: BoxFit.fitHeight,),),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.thumb_up,
                              color: Colors.blue,
                              size: 19,
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text("230"),
                            SizedBox(
                              width: 170,
                            ),
                            Text(" Comment 210    share 200"),
                          ],
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Like Button
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.thumb_up_alt_outlined,
                              color: Colors.blue,
                              size: 24,
                            ),
                          ),
                          Text(
                            "Like",
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                      // Comment Button
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.mode_comment_outlined,
                              size: 24,
                            ),
                          ),
                          Text(
                            "comment",
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                      // Share Button
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.send,
                              size: 24,
                            ),
                          ),
                          Text(
                            "send",
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.share,
                              size: 24,
                            ),
                          ),
                          Text(
                            "share",
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 2),
                  Container(
                    height: 100,
                    width: double.infinity,
                    color: Colors.grey,
                    child: Center(child: Text("No post avilable")),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Dummy Data
List<String> imagee = [
  "assets/images/p1.jpg",
  "assets/images/p2.jpg",
  "assets/images/p3.jpg",
  "assets/images/p4.jpg",
  "assets/images/p5.jpg"
];
List<String> namee = ["John", "Akesh", "Amal", "Joyal", "Hari"];
List<String> friend = [
  "6 mutual friends",
  "10 mutual friends",
  "22 mutual friends",
  "100 mutual friends",
  "9 mutual friends"
];
final List<Map<String, String>> friends = [
  {"name": "Athul Chakuria", "status": "Active 5m ago", "image": "assets/images/person1.1.jpg"},
  {"name": "Ruby Varghese", "status": "Active 2h ago", "image": "assets/images/person2.jpg"},
  {"name": "Dismy Devassy P", "status": "Active 1h ago", "image": "assets/images/person3.jpg"},
  {"name": "Akesh Devassy", "status": "Active 8m ago", "image": "assets/images/person4.jpg"},
  {"name": "Aswin C R", "status": "Active 10m ago", "image": "assets/images/p1.jpg"},
  {"name": "Jacob Pallipat", "status": "Active 45m ago", "image": "assets/images/p2.jpg"},
];
