import 'package:flutter/material.dart';
import 'package:grocery/checkout.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Checkout()));
              },
              child: Icon(
                Icons.notifications,
                size: 25,
              ),
            ),
          ),
        ],
        leading: Icon(
          Icons.arrow_back,
          color: Colors.white,
          size: 20,
        ),
        title: Text(
          'Cart',
          style: TextStyle(fontSize: 30, letterSpacing: 0),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(),
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Text(
                    'Clear',
                    style: TextStyle(
                        color: Colors.lightGreen,
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  ),
                )
              ],
            ),
          ),
          ok('Apple'),
          ok1(),
          ok('Potato'),
          ok1(),
          ok('Maggie'),
          ok1(),
          ok('Orange'),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 70),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(),
                    Padding(
                      padding: EdgeInsets.only(right: 40),
                      child: Text(
                        'Total Cost : ',
                        style: TextStyle(
                            color: Colors.lightGreen,
                            fontSize: 21,
                            fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(),
                    Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Text(
                        '480 Rs. ',
                        style: TextStyle(
                            color: Colors.lightGreen,
                            fontSize: 19,
                            fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget ok(String text) {
    return Padding(
      padding: EdgeInsets.only(top: 10, left: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 8,
            width: MediaQuery.of(context).size.width / 1.3,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black54,
                    blurRadius: 7,
                    offset: Offset(0, 2),
                  ),
                ]),
            child: Container(
              padding:
                  EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image(
                    image: AssetImage(
                      'assets/11.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        text,
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Text(
                        '120/KG',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          color: Colors.green[800],
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.remove,
                          size: 20,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          color: Colors.green[800],
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.add,
                          size: 20,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
              padding: EdgeInsets.only(right: 20),
              child: Text(
                '120',
                style: TextStyle(fontSize: 20, color: Colors.green[900]),
              )),
        ],
      ),
    );
  }

  Widget ok1() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(),
        Padding(
          padding: EdgeInsets.only(right: 20),
          child: Icon(
            Icons.add,
            size: 30,
            color: Colors.green[900],
          ),
        ),
      ],
    );
  }
}
