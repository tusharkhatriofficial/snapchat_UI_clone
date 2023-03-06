import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
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
                  "Chat",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
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

            //list tile for chats here
            SingleChildScrollView(
              child: Column(
                children: [
                  ChatTile(
                    name: "Team Snapchat",
                    image: NetworkImage(
                        "https://us-east1-aws.api.snapchat.com/web-capture/www.snapchat.com/discover/preview/facebook.png"),
                    trailing: Icon(
            Icons.chat_bubble_outline_sharp,
            color: Colors.grey[400],
          ),
                    child: Row(
                      children: [
                        Text(
                          "Blocked",
                        ),
                      ],
                    ),
                  ),
                  ChatTile(
                    name: "Richa",
                    image: AssetImage("assets/images/hero_4.png"),
                    trailing: Icon(
            Icons.chat_bubble_outline_sharp,
            color: Colors.grey[400],
          ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.square,
                          color: Colors.red,
                          size: 15.0,
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          "New Snap",
                          style: TextStyle(color: Colors.red),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text("."),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text("3w"),
                      ],
                    ),
                  ),
                  ChatTile(
                    name: "Anurag",
                    image: AssetImage("assets/images/hero_2.png"),
                    trailing: Icon(
            Icons.chat_bubble_outline_sharp,
            color: Colors.grey[400],
          ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.square,
                          color: Colors.purple,
                          size: 15.0,
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          "New Snap",
                          style: TextStyle(color: Colors.purple),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text("."),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text("3w"),
                      ],
                    ),
                  ),
                  ChatTile(
                    name: "Niyati",
                    image: AssetImage("assets/images/hero_5.png"),
                    trailing: Icon(
            Icons.chat_bubble_outline_sharp,
            color: Colors.grey[400],
          ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.square,
                          color: Colors.red,
                          size: 15.0,
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          "New Snap",
                          style: TextStyle(color: Colors.red),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text("."),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text("3w"),
                      ],
                    ),
                  ),
                  ChatTile(
                    name: "Ritik",
                    image: AssetImage("assets/images/hero_3.png"),
                    trailing: Icon(
            Icons.camera_alt_outlined,
            color: Colors.grey[400],
          ),
                    child: Row(
                      children: [
                        Icon(Icons.chat_bubble_outline_outlined, size: 15.0,),
                        SizedBox(width: 5.0,),
                        Text("Tap to chat"),
                      ],
                    ),
                  ),
                  ChatTile(
                    name: "Richa",
                    image: AssetImage("assets/images/hero_4.png"),
                    trailing: Icon(
            Icons.chat_bubble_outline_sharp,
            color: Colors.grey[400],
          ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.square,
                          color: Colors.red,
                          size: 15.0,
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          "New Snap",
                          style: TextStyle(color: Colors.red),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text("."),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text("3w"),
                      ],
                    ),
                  ),
                  ChatTile(
                    name: "Anurag",
                    image: AssetImage("assets/images/hero_2.png"),
                    trailing: Icon(
            Icons.chat_bubble_outline_sharp,
            color: Colors.grey[400],
          ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.square,
                          color: Colors.purple,
                          size: 15.0,
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          "New Snap",
                          style: TextStyle(color: Colors.purple),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text("."),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text("3w"),
                      ],
                    ),
                  ),
                  ChatTile(
                    name: "Niyati",
                    image: AssetImage("assets/images/hero_5.png"),
                    trailing: Icon(
            Icons.camera_alt_outlined,
            color: Colors.grey[400],
          ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.send_outlined,
                          color: Color(0XFF10ACFF),
                          size: 15.0,
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          "Opened",
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text("."),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text("3w"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0XFF10ACFF),
        child: Icon(Icons.edit_note_outlined),
      ),
    );
  }
}

//chatTile widget
class ChatTile extends StatelessWidget {
  final name;
  final image;
  final child;
  final trailing;

  const ChatTile({Key? key, this.image, this.name, this.child, this.trailing})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(
          height: 3,
        ),
        ListTile(
          leading: CircleAvatar(
            radius: 20.0,
            backgroundColor: Colors.transparent,
            backgroundImage: image,
          ),
          trailing: trailing,
          title: Text(
            name,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: child,
        ),
        Divider(
          height: 3,
        ),
      ],
    );
  }
}
