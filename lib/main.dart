import 'package:flutter/material.dart';
import 'package:grocery/cart.dart';
import 'package:grocery/home1.dart';
import 'package:grocery/profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentindex = 0;
  final List<Widget> _screens = [
    Home1(),
    Cart(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentindex],
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.white,
          backgroundColor: Colors.green,
          currentIndex: _currentindex,
          onTap: (index) {
            setState(() {
              _currentindex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: CircleAvatar(
                backgroundColor:
                    _currentindex == 0 ? Colors.white : Colors.green,
                child: Icon(
                  Icons.home,
                  color: _currentindex == 0 ? Colors.green : Colors.white,
                  size: 30,
                ),
              ),
              title: Text(''),
            ),
            BottomNavigationBarItem(
              icon: CircleAvatar(
                backgroundColor:
                    _currentindex == 1 ? Colors.white : Colors.green,
                child: Icon(
                  Icons.shopping_cart,
                  color: _currentindex == 1 ? Colors.green : Colors.white,
                  size: 30,
                ),
              ),
              title: Text(''),
            ),
            BottomNavigationBarItem(
              icon: CircleAvatar(
                backgroundColor:
                    _currentindex == 2 ? Colors.white : Colors.green,
                child: Icon(
                  Icons.person,
                  color: _currentindex == 2 ? Colors.green : Colors.white,
                  size: 30,
                ),
              ),
              title: Text(''),
            ),
          ],
        ),
      ),
    );
  }
}
