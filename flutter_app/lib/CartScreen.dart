import 'package:flutter/material.dart';
import 'package:flutter_app/AppColors.dart';

class CartScreen extends StatefulWidget {
  int count;
  String typeOfFruit;
  int orangeCount;
  CartScreen(int count, String typeOfFruit) {
    this.count = count;

    this.typeOfFruit = typeOfFruit;
  }

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  final AppColors colors = new AppColors();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        leadingWidth: 80,
        elevation: 0,
        backgroundColor: colors.firstScreenBackground,
        leading: IconButton(
          iconSize: 27,
          color: colors.textsub,
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 280, 0.0),
            child: Text(
              'Cart',
              style: TextStyle(
                fontSize: 40,
                fontFamily: "Poppins",
                color: colors.textsub,
                letterSpacing: 1,
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            child: Card(
              elevation: 40,
              // shadowColor: Colors.yellow[100],
              margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              color: Colors.white12,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: ListTile(
                  title: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                    child: Text(
                      '${widget.typeOfFruit}',
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: "Poppins",
                        color: Colors.white,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                  trailing: Wrap(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 13, 1, 0),
                        child: IconButton(
                          iconSize: 20,
                          color: Colors.white,
                          icon: Icon(Icons.add),
                          onPressed: () {
                            setState(() {
                              widget.count++;
                            });
                          },
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 27, 6, 0),
                        child: Text(
                          '${widget.count}',
                          style: TextStyle(
                            fontSize: 17,
                            fontFamily: "Poppins",
                            color: Colors.yellow,
                            letterSpacing: 1,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 12.6, 0, 0),
                        child: IconButton(
                            iconSize: 20,
                            color: Colors.white,
                            icon: Icon(Icons.remove),
                            onPressed: () {
                              if (widget.count > 0) {
                                setState(() {
                                  widget.count--;
                                });
                              }
                            }),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      backgroundColor: colors.firstScreenBackground,
    );
  }
}
