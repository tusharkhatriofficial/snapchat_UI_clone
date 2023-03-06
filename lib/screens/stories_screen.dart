import 'package:flutter/material.dart';

class StoriesScreen extends StatefulWidget {
  const StoriesScreen({Key? key}) : super(key: key);

  @override
  State<StoriesScreen> createState() => _StoriesScreenState();
}

class _StoriesScreenState extends State<StoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.transparent,
                          backgroundImage: AssetImage("assets/images/hero.png"),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.grey[100],
                          child: Icon(
                            Icons.search,
                            color: Colors.grey[700],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "Stories",
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey[100],
                          child: Icon(
                            Icons.person_add,
                            color: Colors.grey[700],
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.grey[100],
                          child: Icon(
                            Icons.more_horiz,
                            color: Colors.grey[700],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30.0,
              ),

              //Friends section
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Friends",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      height: 140,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Row(
                            children: [
                              storyBubble(
                                name: "Anurag",
                                image: AssetImage("assets/images/hero_2.png"),
                              ),
                              SizedBox(
                                width: 15.0,
                              ),
                              storyBubble(
                                name: "Richa",
                                image: AssetImage("assets/images/hero_4.png"),
                              ),
                              SizedBox(
                                width: 15.0,
                              ),
                              storyBubble(
                                name: "Niyati",
                                image: AssetImage("assets/images/hero_5.png"),
                              ),
                              SizedBox(
                                width: 15.0,
                              ),
                              storyBubble(
                                name: "Ritik",
                                image: AssetImage("assets/images/hero_3.png"),
                              ),
                              SizedBox(
                                width: 15.0,
                              ),
                              storyBubble(
                                name: "Niyati",
                                image: AssetImage("assets/images/hero_5.png"),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              //Subscriptions section
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: Row(
                        children: [
                          Text(
                        "Subscriptions",
                        style: TextStyle(
                            fontSize: 17.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 5.0,),
                      Icon(Icons.arrow_forward_ios, size: 15.0,),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      height: 200.0,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Row(
                            children: [
                              subscriptionTile(
                                name: "Kundu",
                                image: Image.network(
                                  "https://c4.wallpaperflare.com/wallpaper/923/727/796/anime-digital-art-artwork-2d-portrait-display-hd-wallpaper-preview.jpg",
                                  height: 200.0,
                                ),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              subscriptionTile(
                                name: "Tumami",
                                image: Image.network(
                                  "https://images.pexels.com/photos/9410606/pexels-photo-9410606.jpeg?cs=srgb&dl=pexels-zetong-li-9410606.jpg&fm=jpg",
                                  height: 200.0,
                                ),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              subscriptionTile(
                                name: "Jan Goldz",
                                image: Image.network(
                                  "https://c0.wallpaperflare.com/preview/303/473/216/man-standing-on-mountain-during-sunset.jpg",
                                  height: 200.0,
                                ),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              subscriptionTile(
                                name: "Bastrop",
                                image: Image.network(
                                  "https://c4.wallpaperflare.com/wallpaper/367/257/149/anime-anime-girls-digital-art-artwork-2d-hd-wallpaper-preview.jpg",
                                  height: 200.0,
                                ),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              subscriptionTile(
                                name: "Mulessa",
                                image: Image.network(
                                  "https://wallpapercave.com/wp/wp2722942.jpg",
                                  height: 200.0,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              //Discover Section
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Discover",
                        style: TextStyle(
                            fontSize: 17.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                    ListView(
                      shrinkWrap: true,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: DiscoverTile(
                                    name: "Weird Mud Games",
                                    image: Image.network(
                                      "https://c4.wallpaperflare.com/wallpaper/367/257/149/anime-anime-girls-digital-art-artwork-2d-hd-wallpaper-preview.jpg",
                                      height: 380,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 8.0,
                                ),
                                Expanded(
                                  flex: 2,
                                  child: DiscoverTile(
                                    name: "Mulessa",
                                    image: Image.network(
                                      "https://wallpaperaccess.com/full/1559254.png",
                                      height: 380.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 0.0,
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: DiscoverTile(
                                    name: "Weird Mud Games",
                                    image: Image.network(
                                      "https://c4.wallpaperflare.com/wallpaper/367/257/149/anime-anime-girls-digital-art-artwork-2d-hd-wallpaper-preview.jpg",
                                      height: 380,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 8.0,
                                ),
                                Expanded(
                                  flex: 2,
                                  child: DiscoverTile(
                                    name: "Mulessa",
                                    image: Image.network(
                                      "https://wallpaperaccess.com/full/1559254.png",
                                      height: 380.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class subscriptionTile extends StatelessWidget {
  final name;
  final image;
  const subscriptionTile({Key? key, this.name, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            image,
            Positioned(
                bottom: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 2.0),
                  child: Text(
                    name,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold,),
                  ),
                )),
          ],
        ),
      ],
    );
  }
}


class DiscoverTile extends StatelessWidget {
  final name;
  final image;
  const DiscoverTile({Key? key, this.name, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            image,
            Positioned(
                bottom: 30,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 2.0),
                  child: Text(
                    name,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                )),
          ],
        ),
      ],
    );
  }
}

class storyBubble extends StatelessWidget {
  final name;
  final image;
  const storyBubble({
    Key? key,
    this.image,
    this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 45.0,
          backgroundColor: Colors.purple,
          child: CircleAvatar(
            radius: 43.0,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              backgroundImage: image,
              radius: 40.0,
            ),
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          name,
          style: TextStyle(fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
