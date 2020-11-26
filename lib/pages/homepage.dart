import 'package:flutter/material.dart';

import '../drawer.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  TextEditingController _nameController = TextEditingController();
  var myText = "LOG IN";
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[50],
      appBar: AppBar(
        title: Text("Awesome App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Card(
            //elevation: (10),
            child: Column(
              children: <Widget>[
                Image.asset(
                  "assests/bg.jpeg",
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  myText,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    controller: _nameController,
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
                    myText = _nameController.text;
                    setState(() {});
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
      drawer: myDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.edit),
      ),
    );
  }
}
