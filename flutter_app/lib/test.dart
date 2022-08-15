import 'package:flutter/material.dart';

import 'AppColors.dart';

class Test extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String _name;

  static AppColors colors = AppColors();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test'),
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
            child: Column(
              children: [
                TextFormField(
                    maxLength: 20,
                    decoration: InputDecoration(hintText: 'Name'),
                    maxLines: 1,
                    validator: (text) {
                      if (text.isEmpty) {
                        return 'Name cannot be empty';
                      }
                      return null;
                    },
                    onSaved: (text) {
                      _name = text;
                    }),
                Container(
                  child: RaisedButton(
                      onPressed: () {
                        if (_formKey.currentState.validate()) {
                          _formKey.currentState.save();
                          print(_name);
                        }
                      },
                      child: Text('Submit')),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
