import 'package:flutter/material.dart';

import 'AppColors.dart';
import 'CartScreen.dart';

class BlueBerryShop extends StatefulWidget {
  int count = 0;
  String typeOfFruit = 'Blueberry';

  @override
  State<BlueBerryShop> createState() => _BlueBerryShopState();
}

class _BlueBerryShopState extends State<BlueBerryShop> {
  static AppColors colors = AppColors();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.firstScreenBackground,
      appBar: AppBar(
        leadingWidth: 80,
        backgroundColor: colors.firstScreenBackground,
        elevation: 0,
        toolbarHeight: 100,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 25, 0),
            child: IconButton(
              onPressed: () {},
              iconSize: 30,
              icon: Icon(
                Icons.shopping_bag_outlined,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              //  margin: EdgeInsets.fromLTRB(200, 10, 100, 200),
              child: Text("FRUITS",
                  style: TextStyle(
                      fontSize: 22,
                      letterSpacing: 7,
                      fontFamily: "Poppins",
                      color: Colors.yellow[300])),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 30, 0, 10),
            child: Text("BlueBerry",
                style: TextStyle(
                    fontSize: 45,
                    letterSpacing: 4,
                    fontFamily: "Satisfy",
                    fontWeight: FontWeight.w400,
                    color: Colors.white70)),
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 20.9),
                margin: EdgeInsets.fromLTRB(145, 0, 10, 40),
                child: Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 15,
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 20.9),
                margin: EdgeInsets.fromLTRB(0, 0, 0, 40),
                child: Text("(134 Reviews)",
                    style: TextStyle(
                        fontSize: 13,
                        letterSpacing: 1,
                        fontFamily: "Poppins",
                        color: Colors.white54)),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
            height: 550,
            width: 444,
            decoration: BoxDecoration(
              color: Colors.black38,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(130),
                topRight: Radius.circular(130),
              ),
            ),
            child: Column(
              children: [
                Container(
                  // color: Colors.red,
                  // margin: EdgeInsets.fromLTRB(0, 0, 0, 280),
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  height: 260,
                  width: 200,
                  child: Image.asset('images/blueberry.png'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Text("\$8.99",
                          style: TextStyle(
                              fontSize: 55,
                              letterSpacing: 1,
                              fontWeight: FontWeight.w600,
                              color: Colors.yellow[600])),
                    ),
                    Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: colors.firstScreenBackground,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      margin: EdgeInsets.fromLTRB(0, 0, 30, 0),
                      child: IconButton(
                        onPressed: () {},
                        iconSize: 30,
                        icon: Icon(
                          Icons.favorite_border_sharp,
                          color: Colors.redAccent[400],
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 293, 10),
                  child: Text("PER KG",
                      style: TextStyle(
                          fontSize: 18,
                          letterSpacing: 4,
                          fontFamily: "Poppins",
                          color: Colors.white60)),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      padding: EdgeInsets.all(22),
                      decoration: BoxDecoration(
                        color: colors.firstScreenBackground,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Icon(
                        Icons.sentiment_satisfied_alt_outlined,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(22),
                      decoration: BoxDecoration(
                        color: colors.firstScreenBackground,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Icon(
                        Icons.star_outline_sharp,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(22),
                      decoration: BoxDecoration(
                        color: colors.firstScreenBackground,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Icon(
                        Icons.restaurant_menu_outlined,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(62.5, 0, 0, 0),
                      child: Text("  Quality\nAssurance",
                          style: TextStyle(
                              fontSize: 10,
                              letterSpacing: 1,
                              fontFamily: "Poppins",
                              color: Colors.white70)),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(71, 0, 0, 0),
                      child: Text("  Highly\n  Rated",
                          style: TextStyle(
                              fontSize: 10,
                              letterSpacing: 1,
                              fontFamily: "Poppins",
                              color: Colors.white70)),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(80.5, 0, 0, 0),
                      child: Text("  Best-In\n   Taste",
                          style: TextStyle(
                              fontSize: 10,
                              letterSpacing: 1,
                              fontFamily: "Poppins",
                              color: Colors.white70)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(20, 7, 0, 0),
                      height: 46,
                      width: 120,
                      decoration: BoxDecoration(
                        color: colors.firstScreenBackground,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: IconButton(
                              splashRadius: 30,
                              onPressed: () {
                                if (widget.count > 1) {
                                  setState(() {
                                    widget.count--;
                                  });
                                }
                              },
                              icon: Icon(
                                Icons.remove,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: Text(widget.count.toString(),
                                style: TextStyle(
                                    fontSize: 20,
                                    letterSpacing: 1,
                                    fontFamily: "Poppins",
                                    color: Colors.white)),
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  widget.count++;
                                });
                              },
                              splashRadius: 30,
                              icon: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 27,
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: ElevatedButton.icon(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        CartScreen(widget.count,widget.typeOfFruit)));
                          },
                          
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                              Colors.yellow[600],
                            ),
                            padding: MaterialStateProperty.all(
                              EdgeInsets.fromLTRB(50, 11, 50, 11),
                            ),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15))),
                          ),
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.black87,
                          ),
                          label: Text("Go to Cart",
                              style: TextStyle(
                                  fontSize: 19,
                                  fontFamily: "Poppins",
                                  color: Colors.black87)),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
