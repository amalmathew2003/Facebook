import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> url = [
    "assets/images/images1.jpg",
    "assets/images/images2.jpg",
    "assets/images/image3.jpg",
    "assets/images/image4.jpg"
  ];
  List<String> url2 = [
    "assets/images/person1.1.jpg",
    "assets/images/person2.jpg",
    "assets/images/person3.jpg",
    "assets/images/person4.jpg"
  ];
  List<String> url3 = [
    "assets/images/p2.jpg",
    "assets/images/p3.jpg",
    "assets/images/p4.jpg",
    "assets/images/p5.jpg"
  ];
  List<String> name = ["Akesh ad", "hari", "amal", "mathew"];
  List<String> name1 = ["Amal ", "nithin", "joy", "anju"];
  List<String> name2 = [
    "6 mutual friends ",
    "2 mutual friends",
    "1 mutual friends",
    "1 mutual friends"
  ];
  List<String>url1=[
    "assets/images/reel1.jpg",
    "assets/images/reel2.jpg",
    "assets/images/reel_1.jpg",
    "assets/images/reel_2.jpg"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        // Makes the whole screen scrollable vertically
        child: Column(
          children: [
            // Header with TextField and CircleAvatar
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage("assets/images/profile.jpg"),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: "Write something here...",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Horizontal ListView with vertically scrollable containers
            SizedBox(
              height: 200, // Specify the desired height for the scrollable row
              child: ListView.builder(
                scrollDirection: Axis.horizontal, // Scroll horizontally
                itemCount: url.length,
                itemBuilder: (BuildContext context, int index) {
                  if (index == 0) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        children: [
                          Container(
                            width: 110, // Fixed width for each container
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                image: AssetImage(url[index]),
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                    left: 20,
                                    bottom: 10,
                                    child: Text(
                                      "create story",
                                      style: TextStyle(color: Colors.white),
                                    )),
                                Positioned(
                                    bottom: 35,
                                    left: 43,
                                    child: Icon(
                                      Icons.add_circle,
                                      size: 29,
                                      color: Colors.blue,
                                    )),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  } else {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        children: [
                          Container(
                            width: 110, // Fixed width for each container
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                image: AssetImage(url[index]),
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                    top: 5,
                                    left: 8,
                                    child: CircleAvatar(
                                      radius: 28,
                                      backgroundColor: Colors.blue,
                                      child: CircleAvatar(
                                          radius: 25,
                                          backgroundImage:
                                              AssetImage(url2[index])),
                                    )),
                                Positioned(
                                    left: 20,
                                    bottom: 10,
                                    child: Text(
                                      name[index],
                                      style: TextStyle(color: Colors.white),
                                    ))
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 50, // Define the height of the Stack
                child: Stack(
                  children: [
                    // CircleAvatar
                    Positioned(
                      left: 0, // Position the avatar
                      child: CircleAvatar(
                        radius: 22,
                        backgroundImage: AssetImage("assets/images/p1.jpg"),
                      ),
                    ),
                    // Text
                    Positioned(
                      left: 55, // Adjust position to the right of the avatar
                      top: 5, // Vertically center-align the text
                      child: Text(
                        "Amal Mathew",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Positioned(
                        left: 55,
                        top: 25,
                        child: Text(
                          "3 min ago",
                          style: TextStyle(color: Colors.black, fontSize: 12),
                        )),
                    Positioned(
                        right: 0,
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.more_vert,
                              color: Colors.black,
                            )))
                  ],
                ),
              ),
            ),
            Container(
              height: 290,
              width: double.infinity,
              child: Image(
                image: AssetImage(
                  'assets/images/photo1.jpeg',
                ),
                fit: BoxFit.cover,
              ),
            ),
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
                      Text("210"),
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 1),
              child: Row(
                children: [
                  Icon(Icons.group),
                  SizedBox(
                    width: 4,
                  ),
                  Text("People you may know"),
                  SizedBox(
                    width: 175,
                  ),
                  IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz))
                ],
              ),
            ),

            SizedBox(
              height: 350,
              child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(
                      children: [
                        Container(
                          width: 245, // Main container width
                          height: 400, // Set the height as required
                          decoration: BoxDecoration(
                            color: Colors.black87,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        Container(
                          height: 230,
                          width: 245,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Image(
                            image: AssetImage(url3[index]),
                            fit: BoxFit.fill,
                          ),
                        ),
                        Positioned(
                          bottom: 70,
                          left: 6,
                          child: Text(
                            name1[index], // Dynamic text for each item
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Positioned(
                          bottom: 57,
                          left: 5,
                          child: Text(
                            name2[index], // Dynamic text for each item
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 2,
                          bottom: 0,
                          child: Row(
                            mainAxisSize: MainAxisSize.min, // Makes the row take the minimum space required
                            children: [
                              ElevatedButton(
                                onPressed: () {},
                                child: Row(
                                  children: [
                                    Icon(Icons.person_add_alt_1, size: 16,color: Colors.white,),

                                    Text("Add friend",style: TextStyle(color: Colors.white),),
                                  ],
                                ),
                                style: ElevatedButton.styleFrom(
                                  minimumSize: Size(60, 30),
                                  backgroundColor: Colors.blue[800],// Reduced width and height
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                              ),
                              SizedBox(width: 6), // Adds space between the buttons
                              ElevatedButton(
                                onPressed: () {},
                                child: Row(
                                  children: [
                                    // Icon(Icons.person_add_alt_1, size: 16),
                                    SizedBox(width: 4),
                                    Text("remove",style: TextStyle(color: Colors.white),),
                                  ],
                                ),
                                style: ElevatedButton.styleFrom(
                                  minimumSize: Size(40, 30),
                                  backgroundColor: Colors.black12,// Reduced width and height
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
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
                        backgroundImage: AssetImage("assets/images/p4.jpg"),
                      ),
                    ),

                    // Text
                    Positioned(
                      left: 55, // Adjust position to the right of the avatar
                      top: 5, // Vertically center-align the text
                      child: Text(
                        "joy",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),

                    ),
                    Positioned(left: 55,
                        top: 25,
                        child: Text("3 week ago",style: TextStyle(color: Colors.black,fontSize: 12),)),
                    Positioned(right: 0,
                        child: IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,color: Colors.black,)))
                  ],
                ),
              ),
            ),
            Container(height: 300,
              width: double.infinity,
              color: Colors.black,
              child: Image(image: AssetImage("assets/images/image1.jpg"),fit: BoxFit.fitHeight,),),
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
                      Text("3000"),
                      SizedBox(
                        width: 155,
                      ),
                      Text("  Comment 210    share 200"),
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
            Row(children: [

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.video_call,size: 20,),
              ),
              Text("Reels",style: TextStyle(fontSize: 17),)
            ],),

            SizedBox(height: 300,
              child: ListView.builder(itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {

                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(
                      children: [
                        Container(
                          height: 300,
                          width: 200,
                          decoration: BoxDecoration(color: Colors.blue,
                              borderRadius: BorderRadius.circular(30),
                              image: DecorationImage(image: AssetImage(url1[index]),fit: BoxFit.cover)
                          ),
                        ),
                        Positioned(right: 10,
                            child: IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,color: Colors.white,)))

                      ],
                    ),
                  );

                },),),
          ],
        ),
      ),
    );
  }
}
