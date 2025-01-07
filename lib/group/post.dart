import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Post extends StatefulWidget {
  const Post({super.key});

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              leading: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/group1.jpg"),
                        fit: BoxFit.cover),
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(15)),
                height: 50,
                width: 50,
              ),
              title: Text(
                "bike Pranthanmar",
                style: TextStyle(fontSize: 18),
              ),
              subtitle: Text("karthik 30 oct"),
              trailing: Row(
                mainAxisSize:
                    MainAxisSize.min, // This ensures the Row takes minimal space
                children: [
                  IconButton(
                    icon: Icon(Icons.more_horiz),
                    onPressed: () {
                      print('Edit button pressed');
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () {
                      print('Delete button pressed');
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "How is it guys🤔🤔🤔",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                  )
                ],
              ),
            ),
            Container(
              height: 310,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/images/g1.jpg",
                      ),
                      fit: BoxFit.cover)),
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.thumb_up,
                      color: Colors.blue,
                    )),
                Text("300"),
                SizedBox(
                  width: 260,
                ),
                Text("100 comments")
              ],
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.thumb_up_alt_outlined)),
                Text("Like"),
                SizedBox(
                  width: 20,
                ),
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.mode_comment_outlined)),
                Text("Comments"),
                SizedBox(
                  width: 20,
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.send)),
                Text("send"),
                SizedBox(
                  width: 20,
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.share)),
                Text("share"),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage("assets/images/person1.1.jpg"),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: SizedBox(
                    height: 40,
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: "write a comment",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
                    ),
                  ))
                ],
              ),
            ),
            ListTile(
              leading: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/group3.png"),
                        fit: BoxFit.cover),
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(15)),
                height: 50,
                width: 50,
              ),
              title: Text(
                "job in kerala",
                style: TextStyle(fontSize: 18),
              ),
              subtitle: Text("john k 30 oct"),
              trailing: Row(
                mainAxisSize:
                    MainAxisSize.min, // This ensures the Row takes minimal space
                children: [
                  IconButton(
                    icon: Icon(Icons.more_horiz),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Container(
              height: 310,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/images/g2.png",
                      ),
                      fit: BoxFit.cover)),
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.thumb_up,
                      color: Colors.blue,
                    )),
                Text("300"),
                SizedBox(
                  width: 260,
                ),
                Text("100 comments")
              ],
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.thumb_up_alt_outlined)),
                Text("Like"),
                SizedBox(
                  width: 20,
                ),
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.mode_comment_outlined)),
                Text("Comments"),
                SizedBox(
                  width: 20,
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.send)),
                Text("send"),
                SizedBox(
                  width: 20,
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.share)),
                Text("share"),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage("assets/images/person1.1.jpg"),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: SizedBox(
                        height: 40,
                        child: TextField(
                          decoration: InputDecoration(
                              labelText: "write a comment",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20))),
                        ),
                      ))
                ],
              ),
            ),
            ListTile(
              leading: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/group2.jpg"),
                        fit: BoxFit.cover),
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(15)),
                height: 50,
                width: 50,
              ),
              title: Text(
                "Toyota fortuner",
                style: TextStyle(fontSize: 18),
              ),
              subtitle: Text("amal  30 oct"),
              trailing: Row(
                mainAxisSize:
                MainAxisSize.min, // This ensures the Row takes minimal space
                children: [
                  IconButton(
                    icon: Icon(Icons.more_horiz),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Container(
              height: 310,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/images/g3.jpg",
                      ),
                      fit: BoxFit.cover)),
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.thumb_up,
                      color: Colors.blue,
                    )),
                Text("300"),
                SizedBox(
                  width: 260,
                ),
                Text("100 comments")
              ],
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.thumb_up_alt_outlined)),
                Text("Like"),
                SizedBox(
                  width: 20,
                ),
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.mode_comment_outlined)),
                Text("Comments"),
                SizedBox(
                  width: 20,
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.send)),
                Text("send"),
                SizedBox(
                  width: 20,
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.share)),
                Text("share"),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage("assets/images/person1.1.jpg"),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: SizedBox(
                        height: 40,
                        child: TextField(
                          decoration: InputDecoration(
                              labelText: "write a comment",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20))),
                        ),
                      ))
                ],
              ),
            ),
        
          ],
        ),
      ),
    );
  }
}
