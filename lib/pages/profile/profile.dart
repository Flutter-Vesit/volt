import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: const IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'sanket.25_',
          onPressed: null,
        ),
        title: const Text('sanket.25_'),
        actions: const [
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          ),
        ],
      ),
    drawer: Drawer(
    // Add a ListView to the drawer. This ensures the user can scroll
    // through the options in the drawer if there isn't enough vertical
    // space to fit everything.
    child: ListView(
    // Important: Remove any padding from the ListView.
    padding: EdgeInsets.zero,
    children: [
    const DrawerHeader(
    decoration: BoxDecoration(
    color: Colors.blue,
    ),
    child: Text('Drawer Header'),
    ),
    ListTile(
    title: const Text('Home'),
    selected: _selectedIndex == 0,
    onTap: () {
    // Update the state of the app
    _onItemTapped(0);
    // Then close the drawer
    Navigator.pop(context);
    },
    ),
    ListTile(
    title: const Text('Business'),
    selected: _selectedIndex == 1,
    onTap: () {
    // Update the state of the app
    _onItemTapped(1);
    // Then close the drawer
    Navigator.pop(context);
    },
    ),
    ListTile(
    title: const Text('School'),
    selected: _selectedIndex == 2,
    onTap: () {
    // Update the state of the app
    _onItemTapped(2);
    // Then close the drawer
    Navigator.pop(context);
    },
    ),
    ],
    ),),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/cat.jpg'),

                    radius: 100,
                  ),
                Container(
                  color: Colors.green,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text('Hello World'),
                      Text('Hello World'),
                      Text('Hello World'),
                      Text('Hello World'),
                      Text('Hello World'),
                    ],
                  ),
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.blue,
                ),
              ],
            ),),
            Text(
              'Child 1',
              style: TextStyle(fontSize: 24),
            ),
            Text(
              'Child 2',
              style: TextStyle(fontSize: 24),
            ),
            Text(
              'Child 3',
              style: TextStyle(fontSize: 24),
            ),
            Text(
              'Child 4',
              style: TextStyle(fontSize: 24),
            ),
            Container(
              width: getWidth(context),
              height: 300,
              decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
            ),
            Container(
              width: getWidth(context),
              height: 300,
              decoration: BoxDecoration(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
            ),
            // Add more children here as needed
          ],

        ),
      ),
    );
  }
}


double getWidth(BuildContext context){
  return MediaQuery.of(context).size.width;
}