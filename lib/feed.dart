import 'package:face/video.dart';
import 'package:flutter/material.dart';

import 'friends.dart';

class FeedsPage extends StatefulWidget {
  @override
  _FeedsPageState createState() => _FeedsPageState();
}

class _FeedsPageState extends State<FeedsPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
        length: 5,
        vsync: this); // 5 tabs: All, Favorites, Friends, Groups, Pages
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feeds'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print("Search icon pressed");
            },
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: 'All'),
            Tab(text: 'Favorites'),
            Tab(text: 'Friends'),
            Tab(text: 'Groups'),
            Tab(text: 'Pages'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          All(),
          FeedFavorites(),
          All(),
          All(),
          Pagesfeed()
        ],
      ),
    );
  }
}

class All extends StatefulWidget {
  const All({super.key});

  @override
  State<All> createState() => _AllState();
}

class _AllState extends State<All> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Text(
            "You're all caught up",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text(
            "You've seen all the new posts from your friends, groups you are in, and creators you follow. Add new friends, connect with more creators, or join new groups to see more of what you like.",
            style: TextStyle(color: Colors.grey[600]),
          ),
          SizedBox(height: 20),
          // Action buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Friends Button
              Expanded(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) {
                              return FriendsPage();
                            }));
                  },
                  child: Container(
                    height: 100,
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.person_add, color: Colors.white),
                        SizedBox(height: 8),
                        Text('Friends',
                            style: TextStyle(color: Colors.white, fontSize: 12)),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10),
              // Video Button
              Expanded(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) {
                              return video();
                            }));
                  },
                  child: Container(
                    height: 100,
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.video_library, color: Colors.white),
                        SizedBox(height: 8),
                        Text('Explore more in Video',
                            style: TextStyle(color: Colors.white, fontSize: 12)),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10),
              // Groups Button
              Expanded(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) {
                              return video(); // Replace with the correct page
                            }));
                  },
                  child: Container(
                    height: 100,
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.group, color: Colors.white),
                        SizedBox(height: 8),
                        Text('Groups',
                            style: TextStyle(color: Colors.white, fontSize: 12)),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class FeedFavorites extends StatefulWidget {
  const FeedFavorites({super.key});

  @override
  State<FeedFavorites> createState() => _FeedFavoritesState();
}

class _FeedFavoritesState extends State<FeedFavorites> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Manage Favorites"),
            trailing: TextButton(
              onPressed: () {},
              child: Icon(Icons.chevron_right, size: 29),
            ),
          ),
          Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/f2.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Introducing Favorites",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Stay up to date easily with the people and Pages you ",
                      style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "choose ",
                      style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
               SizedBox(height: 10,),
               Row(
                 children: [
                   CircleAvatar(
                     backgroundImage: AssetImage("assets/images/person1.1.jpg"),
                   ),
                   SizedBox(width: 5,),
                   CircleAvatar(
                     backgroundImage: AssetImage("assets/images/person2.jpg"),
                   ),
                   SizedBox(width: 5,),
                   CircleAvatar(backgroundImage: AssetImage("assets/images/person3.jpg"),),
                   SizedBox(width: 5,),
                   CircleAvatar(backgroundImage: AssetImage("assets/images/person4.jpg"),),
                   SizedBox(width: 5,),
                   CircleAvatar(
                     backgroundImage: AssetImage("assets/images/p1.jpg"),
                   ),
                   SizedBox(width: 5,),
                   CircleAvatar(
                     child: Icon(Icons.more_horiz),
                   ),

                 ],
               ),
                SizedBox(height: 20,),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){},
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: 14),
                          backgroundColor: Colors.blue),
                      child: Text("Get started",style: TextStyle(color: Colors.white),)),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}





class Pagesfeed extends StatefulWidget {
  const Pagesfeed({super.key});

  @override
  State<Pagesfeed> createState() => _PagesfeedState();
}

class _PagesfeedState extends State<Pagesfeed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        SizedBox(
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.group,size: 50,color: Colors.blue,)
            ],
          ),
        ),
        Text("Want to see more poste from friends?",style: TextStyle(fontWeight:FontWeight.w500,fontSize: 20),),
        Text("Add more friends to see their posts in your feed when they accept"),
        Text("your friend request"),
        SizedBox(height: 20,),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
              return FriendsPage();
            }));
          },
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 14),
                  backgroundColor: Colors.blue),
              child: Text("find friends",style: TextStyle(color: Colors.white),)),
        )

      ],),
    );
  }
}









