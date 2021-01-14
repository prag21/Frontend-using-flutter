import 'package:flutter/material.dart';
import 'package:grocery/description.dart';
import 'package:grocery/main.dart';

class Fruits extends StatefulWidget {
  @override
  _FruitsState createState() => _FruitsState();
}

class _FruitsState extends State<Fruits> {
  bool open = false;
  bool open1 = false;
  bool open2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(
              Icons.notifications,
              size: 25,
            ),
          )
        ],
        backgroundColor: Colors.green,
        title: Text(
          'Fruits',
          style: TextStyle(fontSize: 28, letterSpacing: 2),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 30, left: 5, right: 5),
            child: Container(
              height: 50,
              width: 20,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.lightGreen, width: 2.5),
              ),
              child: Row(
                children: [
                  IconButton(
                      icon: Icon(
                        Icons.search,
                        color: Colors.lightGreen,
                        size: 35,
                      ),
                      onPressed: null),
                  SizedBox(width: 5),
                  Text(
                    'Search',
                    style: TextStyle(color: Colors.green, fontSize: 20),
                  ),
                ],
              ),
            ),
          ),
          ok1(),
          ok1(),
          ok1(),
        ],
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.green,
          items: [
            BottomNavigationBarItem(
                icon: CircleAvatar(
                  backgroundColor: open ? Colors.white : Colors.green,
                  child: GestureDetector(
                    child: Icon(
                      Icons.home,
                      color: open ? Colors.green : Colors.white,
                      size: 30,
                    ),
                    onTap: () {
                      setState(() {
                        open = true;
                        open1 = false;
                        open2 = false;
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Home()));
                      });
                    },
                  ),
                ),
                title: Text('')),
            BottomNavigationBarItem(
                icon: CircleAvatar(
                  backgroundColor: open1 ? Colors.white : Colors.green,
                  child: GestureDetector(
                    child: Icon(
                      Icons.shopping_cart,
                      color: open1 ? Colors.green : Colors.white,
                      size: 30,
                    ),
                    onTap: () {
                      setState(() {
                        open1 = true;
                        open = false;
                        open2 = false;
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Home()));
                      });
                    },
                  ),
                ),
                title: Text('')),
            BottomNavigationBarItem(
                icon: CircleAvatar(
                  backgroundColor: open2 ? Colors.white : Colors.green,
                  child: GestureDetector(
                    child: Icon(
                      Icons.person,
                      color: open2 ? Colors.green : Colors.white,
                      size: 30,
                    ),
                    onTap: () {
                      setState(() {
                        open2 = true;
                        open = false;
                        open1 = false;
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Home()));
                      });
                    },
                  ),
                ),
                title: Text('')),
          ],
        ),
      ),
    );
  }

  Widget ok1() {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Description()));
      },
      child: Padding(
        padding: EdgeInsets.only(top: 20, left: 5, right: 5, bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 2.8,
              width: MediaQuery.of(context).size.width / 2.3,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black54,
                      blurRadius: 7,
                      offset: Offset(0, 2),
                    ),
                  ]),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(),
                      IconButton(
                        icon: Icon(
                          Icons.add_shopping_cart,
                          color: Colors.green[900],
                          size: 29,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  Container(
                    height: 130,
                    width: 140,
                    child: Image(
                      image: AssetImage('assets/11.jpg'),
                      height: 130,
                      width: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text('Apple',
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                  Row(
                    children: [
                      SizedBox(width: 56),
                      Text('100/KG',
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 18,
                          )),
                      IconButton(
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            size: 20,
                            color: Colors.green,
                          ),
                          onPressed: () {})
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 2.8,
              width: MediaQuery.of(context).size.width / 2.3,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black54,
                      blurRadius: 7,
                      offset: Offset(0, 2),
                    ),
                  ]),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(),
                      IconButton(
                        icon: Icon(
                          Icons.add_shopping_cart,
                          color: Colors.green[900],
                          size: 29,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  Container(
                    height: 130,
                    width: 140,
                    child: Image(
                      image: AssetImage('assets/12.jpg'),
                      height: 130,
                      width: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text('Potato',
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                  Row(
                    children: [
                      SizedBox(width: 61),
                      Text('50/KG',
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 18,
                          )),
                      IconButton(
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            size: 20,
                            color: Colors.green,
                          ),
                          onPressed: () {})
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
