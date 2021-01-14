import 'package:flutter/material.dart';
import 'package:grocery/main.dart';

class Payment extends StatefulWidget {
  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          'Payment',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20, left: 5),
            child: Text(
              'Select your payment method',
              style: TextStyle(
                  color: Colors.lightGreen,
                  fontSize: 18,
                  fontWeight: FontWeight.w700),
            ),
          ),
          ok('Credit Card', 'assets/17.jpg'),
          ok1('UPI', 'assets/16.jpg'),
          ok1('Paytm', 'assets/15.jpg'),
          ok1('Google Pay', 'assets/14.jpg'),
          ok('Cash on delivery', 'assets/18.jpg'),
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
          padding: EdgeInsets.only(left: 5, right: 5),
          child: Stack(
            children: [
              Positioned(
                left: 20,
                top: 17,
                child: Text(
                  'Pay :',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Positioned(
                top: 20,
                left: 100,
                child: Text(
                  '₹ 480',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
              Positioned(
                top: 7,
                right: 0,
                child: RaisedButton(
                  padding: EdgeInsets.symmetric(horizontal: 35),
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => Home()));
                  },
                  child: Text(
                    'Pay Now',
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

  Widget ok(String text, String text2) {
    return Padding(
      padding: EdgeInsets.only(top: 20, left: 5, right: 5),
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
        child: Padding(
          padding: EdgeInsets.only(left: 5, right: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(text2),
                radius: 35,
                backgroundColor: Colors.white,
              ),
              Text(
                text,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              CircleAvatar(
                radius: 14,
                backgroundColor: Colors.grey[350],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget ok1(String text, String text1) {
    return Padding(
      padding: EdgeInsets.only(top: 20, left: 5, right: 5),
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
        child: Padding(
          padding: EdgeInsets.only(left: 5, right: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(text1),
                radius: 35,
                backgroundColor: Colors.white,
              ),
              Text(
                text,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Icon(
                    Icons.remove,
                    color: Colors.green[800],
                    size: 24,
                  ),
                  CircleAvatar(
                    radius: 14,
                    backgroundColor: Colors.grey[350],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
