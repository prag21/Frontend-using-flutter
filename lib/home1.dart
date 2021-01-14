import 'package:flutter/material.dart';
import 'package:grocery/fruits.dart';
import 'package:grocery/main.dart';

class Home1 extends StatefulWidget {
  @override
  _Home1State createState() => _Home1State();
}

class _Home1State extends State<Home1> with SingleTickerProviderStateMixin {
  bool open = true;
  bool open1 = false;
  bool open2 = false;
  TabController _tabController;
  grocy(int index) {
    return AnimatedBuilder(
      animation: _pageController,
      builder: (BuildContext context, Widget widget) {
        double value = 1;
        if (_pageController.position.haveDimensions) {
          value = _pageController.page - index;
          value = (1 - (value.abs() * 0.3)).clamp(0.0, 1.0);
        }
        return Center(
          child: SizedBox(
            height: Curves.easeInOut.transform(value) * 500.0,
            width: Curves.easeInOut.transform(value) * 300.0,
            child: widget,
          ),
        );
      },
      child: Container(
        height: 100,
        width: 140,
        child: Image(
          image: AssetImage(
            'assets/$index.jpg',
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  List<String> _groceries = [
    'assets/0.jpg',
    'assets/1.jpg',
    'assets/2.jpg',
    'assets/3.jpg',
  ];
  PageController _pageController;
  int select = 0;
  @override
  void initState() {
    _tabController = TabController(initialIndex: 0, length: 3, vsync: this);
    _pageController = PageController(initialPage: 0, viewportFraction: 0.8);
    super.initState();
  }

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
          'LOGO',
          style: TextStyle(
            fontSize: 28,
          ),
        ),
        centerTitle: true,
      ),
      drawer: Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.green),
        child: Drawer(
          child: ListView(
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 180),
                  child: IconButton(
                    icon: Icon(
                      Icons.close,
                      size: 40,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Home()));
                    },
                  )),
              Padding(
                padding: EdgeInsets.only(top: 50, left: 40),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => Home()));
                  },
                  child: Text(
                    'Home',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30, left: 40),
                child: Text(
                  'Cart',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30, left: 40),
                child: Text(
                  'Orders',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30, left: 40),
                child: Text(
                  'Settings',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30, left: 40),
                child: Text(
                  'Log Out',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                  ),
                ),
              ),
            ],
          ),
        ),
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
          Padding(
            padding: EdgeInsets.only(
              top: 15,
            ),
            child: Container(
              height: 200,
              width: 200,
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (int index) {
                  setState(() {
                    select = index;
                  });
                },
                itemCount: _groceries.length,
                itemBuilder: (BuildContext context, int index) {
                  return grocy(index);
                },
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, left: 5, right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: RaisedButton(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    color: open ? Colors.lightGreen : Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    onPressed: () {
                      setState(() {
                        open1 = false;
                        open2 = false;
                        open = true;
                      });
                    },
                    child: Text(
                      'Categories',
                      style:
                          TextStyle(color: open ? Colors.white : Colors.green),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: RaisedButton(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    color: open1 ? Colors.lightGreen : Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    onPressed: () {
                      setState(() {
                        open = false;
                        open2 = false;
                        open1 = true;
                      });
                    },
                    child: Text(
                      'New Arrival',
                      style:
                          TextStyle(color: open1 ? Colors.white : Colors.green),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: RaisedButton(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    color: open2 ? Colors.lightGreen : Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    onPressed: () {
                      setState(() {
                        open1 = false;
                        open = false;
                        open2 = true;
                      });
                    },
                    child: Text(
                      'Budget Friendly',
                      style:
                          TextStyle(color: open2 ? Colors.white : Colors.green),
                    ),
                  ),
                ),
              ],
            ),
          ),
          open
              ? ok('Fruits', 'assets/4.jpg', 'Vegetables', 'assets/5.jpg', 45.0,
                  10.0)
              : Container(),
          open
              ? ok('Grains', 'assets/6.jpg', 'Masala', 'assets/7.jpg', 39.0,
                  29.0)
              : Container(),
          open
              ? ok('Frozen Food', 'assets/8.jpg', 'Beverages', 'assets/9.jpg',
                  8.0, 15.0)
              : Container(),
          open1 ? ok1() : Container(),
          open1 ? ok1() : Container(),
          open2 ? ok1() : Container(),
          open2 ? ok1() : Container(),
        ],
      ),
    );
  }

  Widget ok(String text1, String text2, String text3, String text4,
      double left1, double left2) {
    return Padding(
      padding: EdgeInsets.only(top: 10, left: 5, right: 5, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 6,
                width: MediaQuery.of(context).size.width / 2.3,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      image: AssetImage(text2),
                      fit: BoxFit.cover,
                    )),
              ),
              Positioned(
                bottom: 20,
                child: Container(
                  height: 30,
                  width: 120,
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.only(top: 3, left: left1),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Fruits()));
                      },
                      child: Text(
                        text1,
                        style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 6,
                width: MediaQuery.of(context).size.width / 2.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: AssetImage(text4),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                bottom: 20,
                child: Container(
                  height: 30,
                  width: 120,
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.only(top: 3, left: left2),
                    child: Text(
                      text3,
                      style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
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

  Widget ok1() {
    return Padding(
      padding: EdgeInsets.only(top: 10, left: 5, right: 5, bottom: 10),
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
    );
  }
}
