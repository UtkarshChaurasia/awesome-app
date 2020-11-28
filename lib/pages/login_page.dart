import 'package:awesomeflutter/main.dart';
import 'package:awesomeflutter/pages/homepage.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[50],
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            elevation: (10),
            child: Column(
              children: <Widget>[
                Image.asset(
                  "assests/bg.jpeg",
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "EMAIL ID",
                        labelText: "EMAIL"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Password",
                        labelText: "Password"),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Homepage()));
                  },

                  //textColor: Colors.white,
                  padding: EdgeInsets.all(0.0),

                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      gradient: LinearGradient(
                        colors: <Color>[
                          Color(0xFFFB8C00),
                          //Color(0xFFFF9800),
                          Color(0xFFFFCC80),
                        ],
                      ),
                    ),
                    padding: const EdgeInsets.all(20.0),
                    child:
                        const Text('Sign In', style: TextStyle(fontSize: 15)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'New to this app?  ',
                        style: TextStyle(color: Colors.black54),
                      ),
                      TextSpan(
                        text: 'Sign Up',
                        style: TextStyle(color: Colors.blue),
                      ),
                      TextSpan(
                        text: '.',
                        style: TextStyle(color: Colors.black54),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
