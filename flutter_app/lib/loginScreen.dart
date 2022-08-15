import 'package:flutter/material.dart';

import 'AppColors.dart';

class LoginScreen extends StatelessWidget {
  static AppColors colors = AppColors();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String _emailOrUsername;
  String _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.firstScreenBackground,
      appBar: AppBar(
        elevation: 0,
        leadingWidth: 80,
        toolbarHeight: 90,
        backgroundColor: colors.firstScreenBackground,
        leading: IconButton(
          iconSize: 27,
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 220, 0.0),
            child: Text(
              'Login',
              style: TextStyle(
                fontSize: 40,
                fontFamily: "Poppins",
                color: colors.textsub,
                letterSpacing: 1,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                      child: TextFormField(
                        validator: (value) {
                          return ValidateLogin.loginValidatorUserNameOrEmail(
                              value);
                        },
                        onSaved: (value) {
                          _emailOrUsername = value;
                        },
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: "Poppins",
                            color: colors.textsub),
                        cursorColor: colors.textmain,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.login_outlined,
                            color: Colors.white,
                            size: 20,
                          ),
                          hintText: "User Name Or Email",
                          hintStyle: TextStyle(
                            letterSpacing: 1,
                            fontSize: 15,
                            fontFamily: "Poppins",
                            color: Colors.white38,
                          ),
                          border: OutlineInputBorder(
                            gapPadding: 2,
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              color: colors.textsub,
                              width: 2,
                            ),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              style: BorderStyle.none,
                              color: Colors.red,
                              width: 0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                      child: TextFormField(
                        obscureText: true,
                        validator: (value) {
                          return ValidateLogin.passwordCredentialValidator(
                              value);
                        },
                        onSaved: (value) {
                          _password = value;
                        },
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: "Poppins",
                            color: colors.textsub),
                        cursorColor: colors.textmain,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.lock_open_outlined,
                            color: Colors.white,
                            size: 20,
                          ),
                          hintText: "Password",
                          hintStyle: TextStyle(
                            letterSpacing: 1,
                            fontSize: 15,
                            fontFamily: "Poppins",
                            color: Colors.white38,
                          ),
                          border: OutlineInputBorder(
                            gapPadding: 2,
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              color: colors.textsub,
                              width: 2,
                            ),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              style: BorderStyle.none,
                              color: Colors.red,
                              width: 0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(190, 30, 0, 0),
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: TextButton.icon(
                          icon: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.greenAccent,
                            size: 17,
                          ),
                          label: Text('log In',
                              style: TextStyle(
                                fontSize: 27,
                                fontFamily: "Poppins",
                                color: Colors.greenAccent,
                              )),
                          onPressed: () {
                            if (_formKey.currentState.validate()) {
                              _formKey.currentState.save();
                              print(_emailOrUsername);
                              print(_password);
                              print('log up successfully !!!');
                            }
                          }),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ValidateLogin {
  static loginValidatorUserNameOrEmail(String value) {
    if (value.isEmpty) {
      return 'Please enter valid email or Username';
    } else {
      return null;
    }
  }

  static passwordCredentialValidator(String password) {
    if (password.isEmpty) {
      return 'Password is required';
    } else if (password.length < 6) {
      return 'Password must be at least 6 characters';
    } else {
      return null;
    }
  }
}
