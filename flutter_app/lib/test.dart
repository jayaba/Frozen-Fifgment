import 'package:flutter/material.dart';

import 'BlueBerryShop.dart';

class Test extends StatefulWidget {
  List<String> aa = ['a', 'b', 'c', 'd', 'e'];
  var titles = List<String>.generate(5, (index) => '$index');

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return new Container(
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BlueBerryShop()));
                },
                icon: Image.asset(
                  'images/blueberry.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        },
        itemCount: widget.titles.length,
      ),
    );
  }
}
