import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: body(),
    );
  }
}

class body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 5,
      ),
      width: size.width * 0.95,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Text("Sign Up"),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          Center(
            child: TextField(
              decoration: InputDecoration(hintText: 'Enter your email'),
            ),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          Center(
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(hintText: 'Enter your Password'),
            ),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          RaisedButton(
            onPressed: () {},
            child: Text('Sign Up'),
          ),
        ],
      ),
    );
  }
}
