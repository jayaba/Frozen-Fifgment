import 'package:flutter/material.dart';
import 'package:flutter_app/BlueBerryShop.dart';
import 'package:flutter_app/Mandarin.dart';
import 'package:flutter_app/OrangeShop.dart';
import 'package:flutter_app/StrawberrayShop.dart';
import 'package:flutter_app/viewAllScreen.dart';

import 'AppColors.dart';
import 'SignUpScreen.dart';
import 'loginScreen.dart';
import 'test.dart';

class FirstScreen extends StatefulWidget {
  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  static AppColors colors = AppColors();
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      backgroundColor: colors.firstScreenBackground,
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 100,
        leadingWidth: 80,
        backgroundColor: colors.firstScreenBackground,
        leading: IconButton(
          onPressed: () => _key.currentState.openDrawer(),
          iconSize: 27,
          icon: Icon(
            Icons.format_align_left_sharp,
            color: Colors.white,
          ),
        ),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
            child: IconButton(
              onPressed: () {},
              iconSize: 30,
              icon: Icon(
                Icons.shopping_bag_outlined,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            width: 70,
            height: 70,
            margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
            child: IconButton(
              onPressed: () {},
              iconSize: 35,
              icon: new Image.asset(
                'images/userProfile-removebg-preview.png',
                height: 890,
                width: 880,
              ),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 200,
              child: Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                color: colors.firstScreenBackground,
                child: DrawerHeader(
                  decoration: BoxDecoration(
                    color: colors.firstScreenBackground,
                  ),
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: CircleAvatar(
                          backgroundColor: colors.firstScreenBackground,
                          radius: 70,
                          child: Image.asset(
                            'images/vegetablesFruit-removebg-preview.png',
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment(-1.2, -0.0),
                        child: Container(
                          child: Text("Frozen Figment ",
                              style: TextStyle(
                                fontSize: 23,
                                fontFamily: "Nunito",
                                fontWeight: FontWeight.w200,
                                color: colors.textmain,
                                letterSpacing: 1.6,
                              )),
                        ),
                      ),
                      Align(
                        alignment: Alignment(-1.2, -0.0),
                        child: Container(
                          child: Text("Frozen Figment ",
                              style: TextStyle(
                                fontSize: 23,
                                fontFamily: "Nunito",
                                fontWeight: FontWeight.w200,
                                color: colors.textmain,
                                letterSpacing: 1.6,
                              )),
                        ),
                      ),
                      Align(
                        alignment: Alignment(-1.2, -0.0),
                        child: Container(
                          child: Text("Frozen Figment ",
                              style: TextStyle(
                                fontSize: 23,
                                fontFamily: "Nunito",
                                fontWeight: FontWeight.w200,
                                color: colors.textmain,
                                letterSpacing: 1.6,
                              )),
                        ),
                      ),
                      Align(
                        alignment: Alignment(-1.2, -0.0),
                        child: Container(
                          child: Text("Frozen Figment ",
                              style: TextStyle(
                                fontSize: 23,
                                fontFamily: "Nunito",
                                fontWeight: FontWeight.w200,
                                color: colors.textmain,
                                letterSpacing: 1.6,
                              )),
                        ),
                      ),
                      Align(
                        alignment: Alignment(-1.2, -0.0),
                        child: Container(
                          child: Text("Frozen Figment ",
                              style: TextStyle(
                                fontSize: 23,
                                fontFamily: "Nunito",
                                fontWeight: FontWeight.w200,
                                color: colors.textmain,
                                letterSpacing: 1.6,
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Divider(
              height: 0.5,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
              color: colors.firstScreenBackground,
              child: Container(
                margin: EdgeInsets.fromLTRB(0, 13, 0, 0),
                child: ListTile(
                  onTap: toSignUpScreen,
                  title: Text("Sign Up",
                      style: TextStyle(
                        fontSize: 17,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w200,
                        color: Colors.yellow,
                        letterSpacing: 0.8,
                      )),
                  leading: Container(
                    margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Icon(
                      Icons.person_add_alt,
                      color: Colors.yellow,
                      size: 21,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
              color: colors.firstScreenBackground,
              child: Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: ListTile(
                  onTap: toLoginScreen,
                  title: Text("Log In",
                      style: TextStyle(
                        fontSize: 17,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w200,
                        color: Colors.yellow,
                        letterSpacing: 0.8,
                      )),
                  leading: Container(
                    margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Icon(
                      Icons.login,
                      color: Colors.yellow,
                      size: 21,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
              color: colors.firstScreenBackground,
              child: Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: ListTile(
                  title: Text("Manage Account",
                      style: TextStyle(
                        fontSize: 17,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w200,
                        color: Colors.yellow,
                        letterSpacing: 0.8,
                      )),
                  leading: Container(
                    margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Icon(
                      Icons.edit,
                      color: Colors.yellow,
                      size: 21,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
              color: colors.firstScreenBackground,
              child: Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: ListTile(
                  title: Text("Sign Out",
                      style: TextStyle(
                        fontSize: 17,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w200,
                        color: Colors.yellow,
                        letterSpacing: 0.8,
                      )),
                  leading: Container(
                    margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Icon(
                      Icons.logout,
                      color: Colors.yellow,
                      size: 21,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
              color: colors.firstScreenBackground,
              child: Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: ListTile(
                  focusColor: Colors.red,
                  onTap: () {},
                  title: Text("Contact Us",
                      style: TextStyle(
                        fontSize: 17,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w200,
                        color: Colors.yellow,
                        letterSpacing: 0.8,
                      )),
                  leading: Container(
                    margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Icon(
                      Icons.phone,
                      color: Colors.yellow,
                      size: 21,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              color: colors.firstScreenBackground,
              height: 152,
              width: 400,
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
            height: 220,
            width: 370,
            decoration: BoxDecoration(
              color: Colors.white12,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Row(
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 88, 0),
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'OFFER',
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 18,
                          color: Colors.yellow,
                          letterSpacing: 1.9,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
                      margin: EdgeInsets.fromLTRB(10.7, 0, 20, 0),
                      child: Text(
                        'Flat 35% Off',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 48, 0),
                      child: Text(
                        'On honor of World\nHealth Day\nGet 35% off\nfor selected Items',
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 12,
                          color: Colors.white54,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 7, 73, 0),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(colors.textsub),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(13.0))),
                          padding:
                              MaterialStateProperty.all(EdgeInsets.all(10)),
                        ),
                        child: Text(
                          "Find out",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 12,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(26, 13, 10, 0),
                  child: Row(
                    children: [
                      Image.asset(
                        'images/vegetablesFruitOffer-removebg-preview-removebg-preview_1.png',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(20, 10, 0, 0),
                child: Text("Fruits",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 33,
                        color: Colors.white)),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(215, 10, 11, 0),
                padding: EdgeInsets.all(0),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: TextButton.icon(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ViewAllScreen()));
                    },
                    icon: Icon(
                      Icons.arrow_back_outlined,
                      size: 14,
                      color: Colors.yellowAccent,
                    ),
                    label: Text(
                      " View All",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 17,
                          color: Colors.yellowAccent),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        new Container(
                          margin: EdgeInsets.fromLTRB(20, 10, 0, 0),
                          height: 170.0,
                          width: 170,
                          child: new Container(
                            decoration: new BoxDecoration(
                                color: Colors.grey[850],
                                borderRadius: new BorderRadius.only(
                                  topLeft: const Radius.circular(70.0),
                                  topRight: const Radius.circular(70.0),
                                )),
                            child: IconButton(
                              splashRadius: 105,
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => BlueBerryShop()));
                              },
                              icon: Image.asset(
                                'images/blueberry.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                          height: 115,
                          width: 170,
                          decoration: new BoxDecoration(
                              color: Colors.black38,
                              borderRadius: new BorderRadius.only(
                                bottomLeft: const Radius.circular(25.0),
                                bottomRight: const Radius.circular(25.0),
                              )),
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 10, 90, 0),
                                child: Text(
                                  "FRUIT",
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 10,
                                      letterSpacing: 5,
                                      color: Colors.yellow),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 2, 61, 0),
                                child: Text(
                                  "BlueBerry",
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 17,
                                      letterSpacing: 1,
                                      color: Colors.white),
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(17, 2, 0, 0),
                                    child: Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 15,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(5, 2, 8, 0),
                                    child: Text(
                                      "(134 Reviews)",
                                      style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontSize: 10,
                                          letterSpacing: 1,
                                          color: Colors.white54),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(13, 6, 0, 0),
                                    child: Text(
                                      " \$8.99",
                                      style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontSize: 20,
                                          letterSpacing: 1,
                                          color: Colors.yellow),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 8, 0, 0),
                                    child: Text("  per Kg",
                                        style: TextStyle(
                                            fontFamily: "Poppins",
                                            fontSize: 10,
                                            letterSpacing: 1,
                                            color: Colors.white54)),
                                  )
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),

                    /////////////////////////////////////
                    ///
                    ///

                    Column(
                      children: [
                        new Container(
                          margin: EdgeInsets.fromLTRB(20, 10, 0, 0),
                          height: 170.0,
                          width: 170,
                          child: new Container(
                            decoration: new BoxDecoration(
                                color: Colors.grey[850],
                                borderRadius: new BorderRadius.only(
                                  topLeft: const Radius.circular(70.0),
                                  topRight: const Radius.circular(70.0),
                                )),
                            child: IconButton(
                              splashRadius: 105,
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => OrangeShop()));
                              },
                              icon: Image.asset(
                                'images/orange.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                          height: 115,
                          width: 170,
                          decoration: new BoxDecoration(
                              color: Colors.black38,
                              borderRadius: new BorderRadius.only(
                                bottomLeft: const Radius.circular(25.0),
                                bottomRight: const Radius.circular(25.0),
                              )),
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 10, 90, 0),
                                child: Text(
                                  "FRUIT",
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 10,
                                      letterSpacing: 5,
                                      color: Colors.yellow),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 2, 75, 0),
                                child: Text(
                                  "Orange",
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 17,
                                      letterSpacing: 1,
                                      color: Colors.white),
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(17, 2, 0, 0),
                                    child: Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 15,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(5, 2, 8, 0),
                                    child: Text(
                                      "(368 Reviews)",
                                      style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontSize: 10,
                                          letterSpacing: 1,
                                          color: Colors.white54),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(13, 6, 0, 0),
                                    child: Text(
                                      " \$5.99",
                                      style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontSize: 20,
                                          letterSpacing: 1,
                                          color: Colors.yellow),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 8, 0, 0),
                                    child: Text("  per Kg",
                                        style: TextStyle(
                                            fontFamily: "Poppins",
                                            fontSize: 10,
                                            letterSpacing: 1,
                                            color: Colors.white54)),
                                  )
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),

                    Column(
                      children: [
                        new Container(
                          margin: EdgeInsets.fromLTRB(20, 10, 0, 0),
                          height: 170.0,
                          width: 170,
                          child: new Container(
                            decoration: new BoxDecoration(
                                color: Colors.grey[850],
                                borderRadius: new BorderRadius.only(
                                  topLeft: const Radius.circular(70.0),
                                  topRight: const Radius.circular(70.0),
                                )),
                            child: IconButton(
                              splashRadius: 105,
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Mandarin()));
                              },
                              icon: Image.asset(
                                'images/mandarin.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                          height: 115,
                          width: 170,
                          decoration: new BoxDecoration(
                              color: Colors.black38,
                              borderRadius: new BorderRadius.only(
                                bottomLeft: const Radius.circular(25.0),
                                bottomRight: const Radius.circular(25.0),
                              )),
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 10, 90, 0),
                                child: Text(
                                  "FRUIT",
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 10,
                                      letterSpacing: 5,
                                      color: Colors.yellow),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 2, 61, 0),
                                child: Text(
                                  "Mandarin",
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 17,
                                      letterSpacing: 1,
                                      color: Colors.white),
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(17, 2, 0, 0),
                                    child: Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 15,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(5, 2, 8, 0),
                                    child: Text(
                                      "(674 Reviews)",
                                      style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontSize: 10,
                                          letterSpacing: 1,
                                          color: Colors.white54),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(13, 6, 0, 0),
                                    child: Text(
                                      " \$13.99",
                                      style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontSize: 20,
                                          letterSpacing: 1,
                                          color: Colors.yellow),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 8, 0, 0),
                                    child: Text("  per Kg",
                                        style: TextStyle(
                                            fontFamily: "Poppins",
                                            fontSize: 10,
                                            letterSpacing: 1,
                                            color: Colors.white54)),
                                  )
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),

                    Column(
                      children: [
                        new Container(
                          margin: EdgeInsets.fromLTRB(20, 10, 0, 0),
                          height: 170.0,
                          width: 170,
                          child: new Container(
                            decoration: new BoxDecoration(
                                color: Colors.grey[850],
                                borderRadius: new BorderRadius.only(
                                  topLeft: const Radius.circular(70.0),
                                  topRight: const Radius.circular(70.0),
                                )),
                            child: IconButton(
                              splashRadius: 105,
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Strawberry()));
                              },
                              icon: Image.asset(
                                'images/strawberry.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                          height: 115,
                          width: 170,
                          decoration: new BoxDecoration(
                              color: Colors.black38,
                              borderRadius: new BorderRadius.only(
                                bottomLeft: const Radius.circular(25.0),
                                bottomRight: const Radius.circular(25.0),
                              )),
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 10, 90, 0),
                                child: Text(
                                  "FRUIT",
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 10,
                                      letterSpacing: 5,
                                      color: Colors.yellow),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 2, 61, 0),
                                child: Text(
                                  "Strawberry",
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 17,
                                      letterSpacing: 1,
                                      color: Colors.white),
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(17, 2, 0, 0),
                                    child: Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 15,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(5, 2, 8, 0),
                                    child: Text(
                                      "(223 Reviews)",
                                      style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontSize: 10,
                                          letterSpacing: 1,
                                          color: Colors.white54),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(13, 6, 0, 0),
                                    child: Text(
                                      " \$16.99",
                                      style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontSize: 20,
                                          letterSpacing: 1,
                                          color: Colors.yellow),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 8, 0, 0),
                                    child: Text("  per Kg",
                                        style: TextStyle(
                                            fontFamily: "Poppins",
                                            fontSize: 10,
                                            letterSpacing: 1,
                                            color: Colors.white54)),
                                  )
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),

                    //   child: Text(
                    //     "Fruits",
                    //     style: TextStyle(
                    //         fontFamily: "Poppins", fontSize: 20, color: Colors.white),
                    //   ),
                    // )
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 4, 0, 20),
            height: 65,
            width: 360,
            decoration: BoxDecoration(
              color: Colors.grey[850],
              borderRadius: BorderRadius.all(Radius.circular(16)),
            ),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      color: Colors.black26,
                      borderRadius: BorderRadius.circular(10)),
                  margin: EdgeInsets.fromLTRB(22.1, 0, 0, 0),
                  child: IconButton(
                      onPressed: () {},
                      splashRadius: 45,
                      splashColor: Colors.orange,
                      icon: Icon(
                        Icons.home_outlined,
                        size: 20,
                        color: Colors.white,
                      )),
                ),
                Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      color: Colors.black26,
                      borderRadius: BorderRadius.circular(10)),
                  margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                  child: IconButton(
                      splashRadius: 45,
                      splashColor: Colors.orange,
                      onPressed: () {},
                      icon: Icon(
                        Icons.search_rounded,
                        size: 20,
                        color: Colors.white,
                      )),
                ),
                Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      color: Colors.black26,
                      borderRadius: BorderRadius.circular(10)),
                  margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                  child: IconButton(
                      splashRadius: 45,
                      splashColor: Colors.orange,
                      onPressed: () {},
                      icon: Icon(
                        Icons.mail_outline,
                        size: 20,
                        color: Colors.white,
                      )),
                ),
                Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      color: Colors.black26,
                      borderRadius: BorderRadius.circular(10)),
                  margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                  child: IconButton(
                      splashRadius: 45,
                      splashColor: Colors.orange,
                      onPressed: () {},
                      icon: Icon(
                        Icons.more_vert,
                        size: 20,
                        color: Colors.white,
                      )),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  toSignUpScreen() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => SignUpScreen()));
  }

  toLoginScreen() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => LoginScreen()));
  }
}
