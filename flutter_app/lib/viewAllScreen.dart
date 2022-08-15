import 'package:flutter/material.dart';
import 'package:flutter_app/AppColors.dart';

class ViewAllScreen extends StatefulWidget {
  @override
  State<ViewAllScreen> createState() => _ViewAllScreenState();
}

class _ViewAllScreenState extends State<ViewAllScreen> {
  AppColors colors = AppColors();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        backgroundColor: colors.firstScreenBackground,
        leading: IconButton(
          icon: Container(
            margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: Icon(
              Icons.arrow_back_ios,
              size: 20,
            ),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
            child: IconButton(
              icon: Icon(Icons.search, size: 20),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
