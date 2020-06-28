import 'package:communitymarketplace/screens/edit_profile.dart';
import 'package:communitymarketplace/screens/my_posts_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

import 'create_new_post.dart';
import 'needs_screen.dart';
import 'offers_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[Needs(), Offers(), MyPosts()];
  static const String PROFILE = 'Profile';
  static const String SETTINGS = 'Settings';
  static const String LOGOUT = 'Logout';
  static List<String> _optionsMenu = [PROFILE, SETTINGS, LOGOUT];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text("My Community"),
        actions: [
          PopupMenuButton<String>(
            onSelected: (String choice) {
              _onMenuItemSelected(choice);
            },
            itemBuilder: (BuildContext context) {
              return _optionsMenu.map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
          )
        ],
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.local_offer),
            title: Text('Needs'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_offer),
            title: Text('Offers'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            title: Text('My Posts'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Theme.of(context).accentColor,
        onTap: _onItemTapped,
      ),
      floatingActionButton: _buildFloatingActionButton(),
    );
  }

  Widget _buildFloatingActionButton() {
    return SpeedDial(
      animatedIcon: AnimatedIcons.add_event,
      // this is ignored if animatedIcon is non null
      //child: Icon(Icons.add),
      curve: Curves.easeIn,
      overlayOpacity: 0.5,
      onOpen: () => print('OPENING DIAL'),
      onClose: () => print('DIAL CLOSED'),
      tooltip: 'Post a need or offer',
      children: [
        SpeedDialChild(
            child: Icon(Icons.pan_tool),
            backgroundColor: Colors.lightGreen,
            label: 'Post Need',
            labelStyle: TextStyle(fontSize: 18.0, color: Colors.grey[700]),
            onTap: () => _navigateToCreatePost()),
        SpeedDialChild(
            child: Icon(Icons.card_giftcard),
            backgroundColor: Colors.lightGreen,
            label: 'Post Offer',
            labelStyle: TextStyle(fontSize: 18.0, color: Colors.grey[700]),
            onTap: () => _navigateEditProfile()),
      ],
    );
  }

  _navigateToCreatePost() async {
    final result = await Navigator.push(context,
        MaterialPageRoute(builder: (context) => CreateNewPostScreen()));
    if (result != null) {
      _scaffoldKey.currentState
          .showSnackBar(SnackBar(content: Text("$result")));
    }
  }

  _navigateEditProfile() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => EditProfileScreen()));

//    final result = await Navigator.push(
//        context, MaterialPageRoute(builder: (context) => EditProfileScreen()));
//    _scaffoldKey.currentState.showSnackBar(SnackBar(content: Text("$result")));
  }

  _onMenuItemSelected(String choice) {
    switch (choice) {
      case PROFILE:
        _navigateEditProfile();
        break;
      case SETTINGS:
        // TODO
        break;
      case LOGOUT:
        Navigator.pop(context);
        break;
    }
  }
}
