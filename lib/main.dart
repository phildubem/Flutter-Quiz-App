import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizflutterapp/QuizPage.dart';

void main() => runApp(MaterialApp(
  home: QuizApp(),
  debugShowCheckedModeBanner: false,
));

class QuizApp extends StatefulWidget {
  @override
  _QuizAppState createState() => new _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  @override
  Widget build (BuildContext context) {
    return Scaffold (


      body: SafeArea(
        minimum: EdgeInsets.all(5.0),
        child: Container(
          margin: EdgeInsets.fromLTRB(15.0, 80.0, 15.0, 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                height: 220.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/banner.jpg"),
                    fit: BoxFit.fill
                  ),
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
              SizedBox(height: 50.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                 RaisedButton(
                   padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                   color: Colors.cyan,
                   elevation: 4.0,
                   onPressed: () {
                     Navigator.push(context,
                         MaterialPageRoute(builder: (context) => QuizPage()));
                   },
                   child: Text("Click to Start Quiz",
                   style: TextStyle(
                     fontSize: 20.0,
                     color: Colors.white,
                     fontFamily: "OpenSans",
                     fontWeight: FontWeight.bold
                   ),),
                 ),
                ],
              ),
            ],
          ),
        ),
      ),

    );
  }
}
