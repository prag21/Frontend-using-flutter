import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
          ),
        ],
        leading: Padding(
          padding: EdgeInsets.only(left: 20),
          child: Icon(
            Icons.arrow_back,
            size: 25,
          ),
        ),
        backgroundColor: Colors.green,
        title: Text(
          'My Account',
          style: TextStyle(
            fontSize: 28,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20, left: 5, right: 5),
            child: Container(
              height: MediaQuery.of(context).size.height / 2.9,
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
                    padding: EdgeInsets.only(top: 20),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 45,
                      backgroundImage: AssetImage('assets/19.jpg'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 35),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Brianna Hansen',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                '(+91) 1111111111',
                                style: TextStyle(fontSize: 15),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Bhansen@gmail.com',
                                style: TextStyle(fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 80,
                          width: 10,
                          child: VerticalDivider(
                            color: Colors.black,
                            thickness: 2.5,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Icon(
                            Icons.edit,
                            size: 35,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 5, top: 20),
            child: Text(
              'Address',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.green[700],
                  fontWeight: FontWeight.w800),
            ),
          ),
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
                    padding: EdgeInsets.only(top: 25, left: 20, right: 40),
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
        ],
      ),
    );
  }
}
