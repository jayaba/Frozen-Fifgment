import 'package:flutter/material.dart';
import 'package:flutter_app/AppColors.dart';

// ignore: must_be_immutable

class SignUpScreen extends StatelessWidget {
  String _firstName;
  String _lastName;
  String _email;
  String _phoneNumber;
  String _password;

  static AppColors colors = AppColors();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: colors.firstScreenBackground,
        appBar: AppBar(
          toolbarHeight: 90,
          elevation: 0,
          leadingWidth: 80,
          backgroundColor: colors.firstScreenBackground,
          leading: IconButton(
            iconSize: 30,
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 220, 0),
                    child: Text('Sign Up',
                        style: TextStyle(
                            fontSize: 40,
                            fontFamily: "Poppins",
                            color: colors.textsub))),
                nameTextFild(),
                lastNameTextFiled(),
                phoneNumberTextFild(),
                emailTextField(),
                passwordTextField(),
                Container(
                  margin: EdgeInsets.fromLTRB(190, 30, 0, 0),
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: TextButton.icon(
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.greenAccent,
                        size: 15,
                      ),
                      label: Text('Sign Up',
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: "Poppins",
                            color: Colors.greenAccent,
                          )),
                      onPressed: () {
                        if (formKey.currentState.validate()) {
                          formKey.currentState.save();
                          print(_firstName);
                          print(_lastName);
                          print(_email);
                          print(_phoneNumber);
                          print('sign up successfully !!!');
                        }
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  Widget nameTextFild() {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
      child: Padding(
        padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
        child: TextFormField(
          onSaved: (newValue) {
            _firstName = newValue;
          },
          validator: (value) {
            return Validators.nameValidatorfirst(value);
          },
          style: TextStyle(
              fontSize: 20, fontFamily: "Poppins", color: colors.textsub),
          cursorColor: colors.textmain,
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.person,
              color: Colors.white,
              size: 20,
            ),
            hintText: "first name",
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
          ),
        ),
      ),
    );
  }

  Widget lastNameTextFiled() {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
      child: Padding(
        padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
        child: TextFormField(
          validator: (value) {
            return Validators.nameValidatorLast(value);
          },
          onSaved: (value) {
            _lastName = value;
          },
          style: TextStyle(
              fontSize: 20, fontFamily: "Poppins", color: colors.textsub),
          cursorColor: colors.textmain,
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.person_add,
              color: Colors.white,
              size: 20,
            ),
            hintText: "last name",
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
    );
  }

  Widget phoneNumberTextFild() {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
      child: Padding(
        padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
        child: TextFormField(
          validator: (value) {
            return Validators.phoneValidator(value);
          },
          onSaved: (value) {
            _phoneNumber = value;
          },
          keyboardType: TextInputType.number,
          style: TextStyle(
              fontSize: 20, fontFamily: "Poppins", color: colors.textsub),
          cursorColor: colors.textmain,
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.phone,
              color: Colors.white,
              size: 20,
            ),
            hintText: "Phone Number",
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
    );
  }

  Widget emailTextField() {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
      child: Padding(
        padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
        child: TextFormField(
          validator: (value) {
            return Validators.emailValidator(value);
          },
          onSaved: (value) {
            _email = value;
          },
          style: TextStyle(
              fontSize: 20, fontFamily: "Poppins", color: colors.textsub),
          cursorColor: colors.textmain,
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.email_outlined,
              color: Colors.white,
              size: 20,
            ),
            hintText: "E mail",
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
    );
  }

  passwordTextField() {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
      child: Padding(
        padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
        child: TextFormField(
          validator: (value) {
            return Validators.passwordValodator(value);
          },
          onSaved: (value) {
            _password = value;
          },
          style: TextStyle(
              fontSize: 20, fontFamily: "Poppins", color: colors.textsub),
          cursorColor: colors.textmain,
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.lock,
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
    );
  }
}

class Validators {
  static nameValidatorfirst(String value) {
    if (value.isEmpty || value == null) {
      return 'First name cannot be  empty';
    } else if (value.length < 3) {
      return 'Name must be at least 3 characters';
    }
    return null;
  }

  static nameValidatorLast(String value) {
    if (value.isEmpty || value == null) {
      return 'Last name cannot be  empty';
    } else if (value.length < 3) {
      return 'Name must be at least 3 characters';
    }
    return null;
  }

  static phoneValidator(String value) {
    if (value.isEmpty || value == null) {
      return 'Phone number cannot be  empty';
    } else if (value.length < 10) {
      return 'Phone number must be at least 10 characters';
    }
    return null;
  }

  static emailValidator(String value) {
    if (value.isEmpty || value == null) {
      return 'Email cannot be  empty';
    } else if (!value.contains('@')) {
      return 'Email must be a valid email';
    }
    return null;
  }

  static passwordValodator(String value) {
    if (value.isEmpty || value == null) {
      return 'Password cannot be  empty';
    } else if (value.length < 6) {
      return 'Password must be at least 6 characters';
    }
    return null;
  }
}
