import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class video extends StatefulWidget {
  const video({super.key});

  @override
  State<video> createState() => _videoState();
}
List<String>url1=[
  "assets/images/reel1.jpg",
"assets/images/reel2.jpg",
"assets/images/reel3.jpg",
"assets/images/reel4.jpg"];

class _videoState extends State<video> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title:Text("Video",style: TextStyle(fontSize: 24,color: Colors.black),),
        actions: [ IconButton(
          icon: Icon(Icons.person),
          onPressed: () {
            // Search functionality (could show a search page or filter)
          },
        ),
          IconButton(
          icon: Icon(Icons.search),
          onPressed: () {
            // Search functionality (could show a search page or filter)
          },
        ),

        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
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
                        "Amal Mathew .",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 160,
                      bottom: 9.4,
                      child: IconButton(onPressed: (){}, icon: Text("Follow",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w800),))
                    ),

                    Positioned(
                        left: 55,
                        top: 25,
                        child: Text(
                          "3 min ago",
                          style: TextStyle(color: Colors.black, fontSize: 12),
                        )),
                    Positioned(
                        right: 23,
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.more_horiz,
                              color: Colors.black,
                            ))),
                    Positioned(
                        right: 0,
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.close,
                              color: Colors.black,
                            ))),

                  ],
                ),
              ),
            ),
            Container(
              height: 290,
              width: double.infinity,
              child: Image(
                image: AssetImage(
                  'assets/images/v1.jpg',
                ),
                fit: BoxFit.fill,
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
                        width: 100,
                      ),
                      Text(" 210.Comment  200.share  12 views "),
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
                        backgroundImage: AssetImage("assets/images/p2.jpg"),
                      ),
                    ),
                    // Text
                    Positioned(
                      left: 55, // Adjust position to the right of the avatar
                      top: 5, // Vertically center-align the text
                      child: Text(
                        "akesh .",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Positioned(
                        left: 100,
                        bottom: 9.4,
                        child: IconButton(onPressed: (){}, icon: Text("Follow",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w800),))
                    ),

                    Positioned(
                        left: 55,
                        top: 25,
                        child: Text(
                          "3 min ago",
                          style: TextStyle(color: Colors.black, fontSize: 12),
                        )),
                    Positioned(
                        right: 23,
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.more_horiz,
                              color: Colors.black,
                            ))),
                    Positioned(
                        right: 0,
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.close,
                              color: Colors.black,
                            ))),

                  ],
                ),
              ),
            ),
            Container(
              height: 290,
              width: double.infinity,
              child: Image(
                image: AssetImage(
                  'assets/images/v2.jpg',
                ),
                fit: BoxFit.fill,
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
                        width: 100,
                      ),
                      Text(" 210.Comment  200.share  12 views "),
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

          ],
        ),
      ),
    );
  }
}