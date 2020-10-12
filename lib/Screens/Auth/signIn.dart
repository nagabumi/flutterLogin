import 'package:flutter/material.dart';
import 'package:flutterLogin/screens/Auth/signUp.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
            child: Text("Sign In"),
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
            child: Text('Sign In'),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          Text('or'),
          SizedBox(
            height: size.height * 0.02,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, "/signUp");
            },
            child: Text(
              'Sign Up',
              style: TextStyle(decoration: TextDecoration.underline),
            ),
          )
        ],
      ),
    );
  }
}
