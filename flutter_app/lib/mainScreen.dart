import 'package:flutter/material.dart';
import 'package:flutter_app/firstScreen.dart';

import 'AppColors.dart';
import 'test.dart';

class MainScreen extends StatelessWidget {
  static AppColors colors = AppColors();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 145, 0, 45.0),
            child: Image.asset('images/vegetablesFruit-removebg-preview.png'),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 27.0),
            child: Text(
              'KEEPING YOU HEALTHY',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.normal,
                color: colors.textsub,
                letterSpacing: 6.7,
              ),
            ),
          ),
          Container(
            child: Text(
              'Let\'s start eating ',
              style: TextStyle(
                fontSize: 38,
                fontFamily: "Poppins",
                fontWeight: FontWeight.bold,
                color: Colors.white,
                letterSpacing: 1,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 0.0),
            padding: EdgeInsets.fromLTRB(0, 0, 0, 20.0),
            child: Text(
              'Healthy',
              style: TextStyle(
                fontSize: 43,
                fontFamily: "Poppins",
                color: Colors.white,
                letterSpacing: 1,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 0.0),
            child: Text(
              'In honor of Wolrd Health Day',
              style: TextStyle(
                fontSize: 18,
                fontFamily: "Nunito",
                fontWeight: FontWeight.w200,
                color: colors.textmain,
                letterSpacing: 1.6,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 0.0),
            child: Text(
              'we\'d like to give you this',
              style: TextStyle(
                fontSize: 18,
                fontFamily: "Nunito",
                fontWeight: FontWeight.w200,
                color: colors.textmain,
                letterSpacing: 1.6,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 60.0),
            child: Text(
              'amazing offer',
              style: TextStyle(
                fontSize: 18,
                fontFamily: "Nunito",
                fontWeight: FontWeight.w200,
                color: colors.textmain,
                letterSpacing: 1.6,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 30, 0, 0.0),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: ElevatedButton.icon(
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FirstScreen())),
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0))),
                    padding: MaterialStateProperty.all(
                        EdgeInsets.fromLTRB(125, 20, 125, 20)),
                    backgroundColor:
                        MaterialStateProperty.all(colors.buttonMain)),
                icon: Icon(
                  Icons.arrow_back_ios_outlined,
                  color: Colors.black,
                  size: 20,
                ),
                label: Text(
                  'Get Started',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Poppins",
                    color: Colors.black,
                    letterSpacing: 0.5,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
