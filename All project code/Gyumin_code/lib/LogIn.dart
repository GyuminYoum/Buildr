import 'package:flutter/material.dart';
import 'Username_recov.dart';
import 'main.dart';
import 'mainpage.dart';

class LoginPage extends StatefulWidget{
  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LoginPage> {
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
                image:AssetImage('workout1.jpg'),fit:BoxFit.cover)),
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
            SizedBox(
              height: 5,
            ),

            Padding(
              padding: EdgeInsets.only(top:0.0,left: 50.0,right:50.0),
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyApp()),
            );
                },
                color: Colors.blue,
                child: Text(
                  'Log In',
                   style: TextStyle(
                    color:Colors.white),
                )
              ),       
            ),
            SizedBox(height:5.0),
            Padding(
              padding: EdgeInsets.only(left:200.0),
              child: Row(
                children:<Widget>[
                  Text('Forgot '),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Username_Recov_Page()),
                      );
                    },
                    child:Text('Username?',
                    style: TextStyle(
                    color:Colors.blue,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline
                    ),
                    ),
                  ),
                  Text('/'),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Username_Recov_Page()),
                      );
                    },
                    child:Text('password?',
                    style: TextStyle(
                    color:Colors.blue,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline
                    ),
                    ),
                  ),
                ]
              ),
            ),
            Padding(
              padding:EdgeInsets.only(top:5.0, left:240.0),
              child:Row(
                children:<Widget>[
                  Text('First time? Sign Up '),
                  InkWell(
                    onTap: (){
                    Navigator.push(
                      context,
                       MaterialPageRoute(builder: (context) => SignUpPage()
                       ));
                  },
                  child:Text('Here',
                  style: TextStyle(
                    color:Colors.blue,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline
                  )
                  ),
                ),
                ]
              )
      )]),
    );
  }
}