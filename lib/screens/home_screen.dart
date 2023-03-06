import 'package:flutter/material.dart';
import 'package:snapchat_clone_ui/screens/camera_screen.dart';
import 'package:snapchat_clone_ui/screens/chat_screen.dart';
import 'package:snapchat_clone_ui/screens/location_screen.dart';
import 'package:snapchat_clone_ui/screens/reels_screen.dart';
import 'package:snapchat_clone_ui/screens/stories_screen.dart';
import 'initial_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _selectedIndex = 0;  
  static const List<Widget> _widgetOptions = <Widget>[  
    LocationScreen(),
    ChatScreen(),  
    CameraScreen(),
    StoriesScreen(),
    ReelScreen(),
  ];  
  
  void _onItemTapped(int index) {  
    setState(() {  
      _selectedIndex = index;  
    });  
  }  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: _widgetOptions[_selectedIndex]
      ),
      bottomNavigationBar: BottomNavigationBar(  
        items:  <BottomNavigationBarItem>[  
          BottomNavigationBarItem(  
            backgroundColor: Colors.black,
            icon: Icon(Icons.location_on_outlined, size: 25.0, color: Colors.white,),  
            label: "",
          ),  
          BottomNavigationBarItem(  
            backgroundColor: Colors.black,
            icon: Icon(Icons.chat_bubble_outline_rounded, size: 25.0, color: Colors.white,),  
            label: "",  
          ), 
          BottomNavigationBarItem(  
            backgroundColor: Colors.black,
            icon: Icon(Icons.camera_alt_outlined, size: 25.0, color: Colors.white,),  
            label: "", 
          ),  
          BottomNavigationBarItem(  
            backgroundColor: Colors.black,
            icon: Icon(Icons.group_outlined, size: 25.0, color: Color(0XFF10ACFF),),  
            label: "", 
          ),  
          BottomNavigationBarItem(  
            backgroundColor: Colors.black,
            icon: Icon(Icons.play_arrow_outlined, size: 25.0, color: Colors.white,),  
            label: "", 
          ),   
        ],  
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,  
         selectedItemColor: Color(0XFF10ACFF), 
        backgroundColor: Colors.black,
        onTap: _onItemTapped,  
        unselectedItemColor: Colors.white,
        
      ),  
    );
  }
}

