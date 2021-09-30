import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
void main() {

  runApp(MaterialApp(
    home: registerScreen(),
  ));
}

class registerScreen extends StatefulWidget {

  @override
  _registerScreenState createState() => _registerScreenState();
}

class _registerScreenState extends State<registerScreen> {
  FirebaseAuth _auth = FirebaseAuth.instance;
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Future handleSingin() async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: nameController.text.trim(),
          password: passwordController.text,
      );
      showDialog(context: context, builder: (context){
        return Dialog(
          child: AlertDialog(
            title: new Text("Alert!!"),
            content: new Text("Registration Success  "),
            actions: <Widget>[

              new TextButton(
                child: new Text("OK"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      });
    } catch (e) {
      print(e);
    }
  }
  _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: new Text("Alert!!"),
          content: new Text("Registration Success  "),
          actions: <Widget>[
            new TextButton(
              child: new Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('GoodWatch'),
          centerTitle: true,
        ),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'GoodWatch',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Register',
                      style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),
                    )),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'User Name',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'confirm your Password',
                    ),
                  ),
                ),
                SizedBox(height: 20.0,),
                Container(
                    height: 50,
                    color: Colors.blue,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: TextButton(
                      child: Text('Register',
                      style:TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),
                      ),
                      onPressed: handleSingin,
                      //  _showDialog(context);
                    )),

              ],
            )));
  }
}
