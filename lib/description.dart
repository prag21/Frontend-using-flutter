import 'package:flutter/material.dart';
import 'package:grocery/main.dart';

class Description extends StatefulWidget {
  @override
  _DescriptionState createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  String value;
  List listitem = ['0', '1', '2'];
  bool open = false;
  bool open1 = false;
  bool open2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 300,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/13.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10, top: 10),
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.green[800],
                          ),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Home()));
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 10, top: 10),
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          icon: Icon(
                            Icons.add_shopping_cart,
                            color: Colors.green[800],
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 15, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Tomato',
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 27,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '50/KG',
                      style: TextStyle(color: Colors.green, fontSize: 20),
                    )
                  ],
                ),
                RaisedButton(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    onPressed: () {},
                    color: Colors.green,
                    child: DropdownButton(
                      dropdownColor: Colors.white,
                      icon: Icon(
                        Icons.arrow_drop_down,
                      ),
                      iconSize: 25,
                      iconEnabledColor: Colors.white,
                      hint: Text(
                        'Qty',
                        style: TextStyle(color: Colors.white),
                      ),
                      onChanged: (newValue) {
                        setState(() {
                          value = newValue;
                        });
                      },
                      value: value,
                      items: listitem.map((valueitem) {
                        return DropdownMenuItem(
                          value: valueitem,
                          child: Text(valueitem),
                        );
                      }).toList(),
                    )),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Text(
                '''The tomato is the edible berry of the plant Solanum lycopersicum,commonly known as a tomato plant. The species originated in western South America and Central America.The Nahuatl (the language used by the Aztecs) word tomatl gave rise to the Spanish word tomate, from which the English word tomato derived. Its domestication and use as a cultivated food may have originated with the indigenous peoples of Mexico. The Aztecs used tomatoes in their cooking at the time of the Spanish conquest of the Aztec Empire, and after the Spanish encountered the tomato for the first time after their contact with the Aztecs, they brought the plant to Europe. From there, the tomato was introduced to other parts of the European-colonized world during the 16th century.'''),
          ),
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
}
