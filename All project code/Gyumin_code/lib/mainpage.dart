import 'package:flutter/material.dart';
import 'package:work_out/main.dart';

class SignUpPage extends StatefulWidget{
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:ListView(
        children: <Widget>[
          Container(
            height:300,
            decoration: BoxDecoration(
              image:DecorationImage(
                image:AssetImage('run.jpg'),fit:BoxFit.cover)),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: <Widget>[
                  IconButton(icon: Icon(Icons.person), onPressed: () {}),
                  Expanded(child: 
                  Container(
                    margin: EdgeInsets.only(left:4,right:20),
                    child: TextField(
                      decoration:InputDecoration(
                        hintText: 'Username'
                      ),
                    )))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: <Widget>[
                  IconButton(icon: Icon(Icons.lock), onPressed: () {}),
                  Expanded(child: 
                  Container(
                    margin: EdgeInsets.only(left:4,right:20),
                    child: TextField(
                      decoration:InputDecoration(
                        hintText: 'Password'
                      ),
                    )))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: <Widget>[
                  IconButton(icon: Icon(Icons.lock), onPressed: () {}),
                  Expanded(child: 
                  Container(
                    margin: EdgeInsets.only(left:4,right:20),
                    child: TextField(
                      decoration:InputDecoration(
                        hintText: 'Confirm Password'
                      ),
                    )))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: <Widget>[
                  IconButton(icon: Icon(Icons.mail), onPressed: () {}),
                  Expanded(child: 
                  Container(
                    margin: EdgeInsets.only(left:4,right:20),
                    child: TextField(
                      decoration:InputDecoration(
                        hintText: 'Email'
                      ),
                    )))
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyApp()),
            );
                },
                color: Colors.blue,
                child: Text(
                  'Register',
                   style: TextStyle(
                    color:Colors.white),
                )
              ),       
            ),
        ],
      ),
    );
  }
}