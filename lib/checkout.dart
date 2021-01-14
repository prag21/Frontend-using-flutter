import 'package:flutter/material.dart';
import 'package:grocery/payment.dart';

class Checkout extends StatefulWidget {
  @override
  _CheckoutState createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          'Checkout',
          style: TextStyle(color: Colors.white, fontSize: 26, letterSpacing: 1),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(
              padding: EdgeInsets.only(top: 5, left: 5),
              child: Text(
                'Delivery Address',
                style: TextStyle(
                  color: Colors.lightGreen,
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
              )),
          Padding(
            padding: EdgeInsets.only(top: 15, left: 5, right: 5),
            child: Container(
              height: MediaQuery.of(context).size.height / 4.1,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black54,
                      blurRadius: 7,
                      offset: Offset(0, 2),
                    ),
                  ]),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10, left: 5, right: 5),
                    child: Text(
                      '''Loreum ipsum doloor sit amet,consetetur sadispscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua''',
                      style: TextStyle(fontSize: 15, color: Colors.black87),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: 20, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(),
                          Container(
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.check,
                              color: Colors.white,
                              size: 28,
                            ),
                          ),
                        ],
                      )),
                ],
              ),
            ),
          ),
          Padding(
              padding: EdgeInsets.only(top: 20, left: 5),
              child: Text(
                'Order Summary',
                style: TextStyle(
                  color: Colors.lightGreen,
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
              )),
          Padding(
            padding: EdgeInsets.only(top: 12, left: 5, right: 5),
            child: Container(
              height: MediaQuery.of(context).size.height / 7.8,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black54,
                      blurRadius: 7,
                      offset: Offset(0, 2),
                    ),
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image(
                    image: AssetImage('assets/11.jpg'),
                  ),
                  Text('Apple', style: TextStyle(fontSize: 18)),
                  Text(
                    'QTY:1',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 5),
                    child: Text(
                      '₹ 120',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                  )
                ],
              ),
            ),
          ),
          ok('Potato'),
          ok('Maggie'),
          ok('Orange'),
        ],
      ),
      bottomNavigationBar: Container(
        height: 60,
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10.0), topRight: Radius.circular(10.0)),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 0, right: 5),
          child: Stack(
            children: [
              Positioned(
                left: 20,
                top: 17,
                child: Text(
                  'Total Cost :',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Positioned(
                top: 20,
                left: 140,
                child: Text(
                  '₹ 480',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
              Positioned(
                top: 7,
                right: 0,
                child: RaisedButton(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Payment()));
                  },
                  child: Text(
                    'Confirm order',
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget ok(String text) {
    return Padding(
      padding: EdgeInsets.only(top: 18, left: 5, right: 5),
      child: Container(
        height: MediaQuery.of(context).size.height / 7.8,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black54,
                blurRadius: 7,
                offset: Offset(0, 2),
              ),
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image(
              image: AssetImage('assets/11.jpg'),
            ),
            Text(text, style: TextStyle(fontSize: 18)),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  Icon(
                    Icons.remove,
                    color: Colors.green[700],
                  ),
                  Text(
                    'QTY:1',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 5),
              child: Text(
                '₹ 120',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              ),
            )
          ],
        ),
      ),
    );
  }
}
