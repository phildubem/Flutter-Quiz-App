import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class QuizCard {
  var images = [
    'flutter', 'dart', 'widgets', 'debug', 'hot', 'platforms', 'firebase', 'pubspec', 'appstate', 'apps',

  ];

  var questions = [
    'What platform(s), can flutter be used for?',
    'What would be Flutter, if Javascript is React Native?',
    'All building blocks in flutter can be described as?',
    'Which of the following "DebugShowChecked" when set to false removes the banner in flutter?',
    'Which of these option does not differentiate Hot Reload from Hot Restart?',
    'Which of these cannot be used as a cross platform mobile app development framework?',
    'Which of these is best fit as cloud storage means in flutter?',
    'Which one of these is an exception to Pubspec.yaml app constraints?',
    'A State that transcends a single widget, you want across your app is termed?',
    'All of these mobile apps were developed using flutter except?'
  ];

  var choices = [
    ['Android', 'Web', 'IOS', 'All Listed'],
    ['Python', 'Dart', 'TypeScript',  'Vue'],
    ['Stateless', 'Widgets', 'Stateful', 'Blocks'],
    ['ModeBanner', 'BannerShow', 'MaterialGrid', 'ShowBanner'],
    ['Compile New Codes', 'Less Time', 'Full Compile', 'App State Preserve'],
    ['Xamarin', 'React ', 'Swift', 'Flutter'],
    ['Mongo', 'Auth0', 'Firebase', 'Parse'],
    ['General Setting', ' Asset', ' Dependencies', ' Readme'],
    ['Shared State',  'UI State', 'Ephe State', 'Local State'],
    ['Alibaba', 'Tecent', 'Skype', 'Google']
  ];

  var correctAnswers = [
    'All Listed', 'Dart', 'Widgets', 'ModeBanner', 'Full Compile',
    'Swift', 'Firebase', ' Readme', 'Shared State', 'Skype',
  ];
}

var finalScore = 0;
var questionNumber = 0;
var quiz = new QuizCard();



class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => new _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async => false,
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF001052),
                Color(0xFF61A4F1),
                Color(0xFF478DE0),
                Color(0xFF398AE5),
              ],
              stops: [0.3, 0.3, 0.7, 0.9],
            ),
          ),
          child: SafeArea(
            minimum: EdgeInsets.fromLTRB(2.0, 20.0, 2.0, 5.0),
            child: Container(
              margin: EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 5.0),
              alignment: Alignment.topCenter,
              child: Column(
                children: <Widget>[
                  SizedBox(height: 15.0),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 10.0),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.black12
                              ),
                              color: Colors.black38,
                            borderRadius: BorderRadius.circular(5.0)
                          ),
                          child: Text("Question ${questionNumber + 1} of ${quiz.questions.length}",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white
                          ),),
                        ),
                        Container(
                          padding: EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.black12
                              ),
                              color: Colors.black38,
                              borderRadius: BorderRadius.circular(5.0)
                          ),
                          child: Text("Points: $finalScore",
                            style: TextStyle(
                                fontSize: 20.0,
                              color: Colors.white
                            ),),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 25.0),
                  Container(
                    height: 200.0,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.black26
                      ),
                      image: DecorationImage(
                          image: AssetImage("images/${quiz.images[questionNumber]}.png"),
                          fit: BoxFit.fill
                      ),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                  SizedBox(height: 20.0),
                Text(quiz.questions[questionNumber],
                style: TextStyle(
                  fontFamily: "OpenSans",
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600
                ),),
                  SizedBox(height: 20.0),
                  Container(
                    padding: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 10.0),
                    decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                            color: Colors.black26,
                            width: 2.0,
                          ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        RaisedButton (
                          padding: EdgeInsets.fromLTRB(10.0, 8.0, 10.0, 8.0),
                          elevation: 8.0,
                          color: Colors.white,
                          onPressed: () {
                            if (quiz.choices[questionNumber][0] == quiz.correctAnswers[questionNumber]){
                              finalScore = finalScore + 4;
                            }else{
                              debugPrint("Wrong");
                            }
                            updateQuestion();
                          },
                          child: Text(quiz.choices[questionNumber][0],
                          style: TextStyle(
                            fontSize: 22.0,
                            fontFamily: "AlegreyaSans",
                            color: Colors.black
                          ),),
                        ),

                        RaisedButton (
                          padding: EdgeInsets.fromLTRB(10.0, 8.0, 10.0, 8.0),
                          elevation: 8.0,
                          color: Colors.white,
                          onPressed: () {
                            if (quiz.choices[questionNumber][1] == quiz.correctAnswers[questionNumber]){
                              finalScore = finalScore + 4;
                            }else{
                              debugPrint("Wrong");
                            }
                            updateQuestion();
                          },
                          child: Text(quiz.choices[questionNumber][1],
                            style: TextStyle(
                                fontSize: 22.0,
                                fontFamily: "AlegreyaSans",
                                color: Colors.black
                            ),),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 10.0),
                  Container(
                    padding: EdgeInsets.only(left: 5.0, right: 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        RaisedButton (
                          padding: EdgeInsets.fromLTRB(10.0, 8.0, 10.0, 8.0),
                          elevation: 8.0,
                          color: Colors.white,
                          onPressed: () {
                            if (quiz.choices[questionNumber][2] == quiz.correctAnswers[questionNumber]){
                              finalScore = finalScore + 4;
                            }else{
                              debugPrint("Wrong");
                            }
                            updateQuestion();
                          },
                          child: Text(quiz.choices[questionNumber][2],
                            style: TextStyle(
                                fontSize: 22.0,
                                fontFamily: "AlegreyaSans",
                                color: Colors.black
                            ),),
                        ),

                        RaisedButton (
                          padding: EdgeInsets.fromLTRB(10.0, 8.0, 10.0, 8.0),
                          elevation: 8.0,
                          color: Colors.white,
                          onPressed: () {
                            if (quiz.choices[questionNumber][3] == quiz.correctAnswers[questionNumber]){
                              finalScore = finalScore + 4;
                            }else{
                              debugPrint("Wrong");
                            }
                            updateQuestion();
                          },
                          child: Text(quiz.choices[questionNumber][3],
                            style: TextStyle(
                                fontSize: 22.0,
                                fontFamily: "AlegreyaSans",
                                color: Colors.black
                            ),),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 35.0),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.black12
                      ),
                      color: Colors.black26,
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    padding: EdgeInsets.fromLTRB(5.0, 8.0, 5.0, 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        RaisedButton (
                          padding: EdgeInsets.fromLTRB(60.0, 10.0, 60.0, 10.0),
                          color: Colors.black38,
                          onPressed: () {
                            updateQuestion();
                          },
                          child: Text("Next",
                            style: TextStyle(
                                fontSize: 20.0,
                                fontFamily: "OpenSans",
                                color: Colors.greenAccent,
                                fontWeight: FontWeight.w500
                            ),),
                        ),

                        RaisedButton (
                          padding: EdgeInsets.fromLTRB(50.0, 10.0, 50.0, 10.0),
                          color: Colors.black38,
                          onPressed: () {
                            resetQuiz();
                          },
                          child: Text("Restart",
                            style: TextStyle(
                                fontSize: 20.0,
                                fontFamily: "OpenSans",
                                color: Colors.white70,
                                fontWeight: FontWeight.w500
                            ),),
                        ),

                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void resetQuiz() {
    setState(() {
      Navigator.pop(context);
      finalScore = 0;
      questionNumber = 0;
    });
  }

  void updateQuestion() {
    setState(() {
      if (questionNumber == quiz.questions.length - 1) {
        Navigator.push(context, MaterialPageRoute(builder: (context) => new Summary(score: finalScore)));
      }else {
        questionNumber++;
      }
    });
  }

}

class Summary extends StatelessWidget{
  final int score;
  Summary({Key key, @required this.score}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: ()async => false,
        child: Scaffold(
          body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF001052),
                  Color(0xFF61A4F1),
                  Color(0xFF478DE0),
                  Color(0xFF398AE5),
                ],
                stops: [0.2, 0.2, 0.7, 0.9],
              ),
            ),
            child: SafeArea(
              minimum: EdgeInsets.fromLTRB(10.0, 40.0, 10.0, 30.0),
              child: Container(
                child: Center(
                  child: Column(
                    children: <Widget>[
                      Container(
                        color: Colors.black38,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(140.0, 15.0, 140.0, 15.0),
                          child: Text("Score Card",
                            style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                fontFamily: "OpenSans",
                                color: Colors.white
                            ),),
                        ),
                      ),
                      SizedBox(height: 150.0),
                      Text("All questions have 4 points each",
                        style: TextStyle(
                            fontSize: 18.0,
                            fontFamily: "OpenSans",
                            color: Colors.black54
                        ),),
                      Text("Your total points is: $score",
                        style: TextStyle(
                            fontSize: 23.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: "OpenSans",
                            color: Colors.black
                        ),),
                      SizedBox(height: 50.0),
                      RaisedButton (
                        elevation: 5.0,
                        padding: EdgeInsets.fromLTRB(65.0, 15.0, 65.0, 15.0),
                        color: Colors.red,
                        onPressed: () {
                          questionNumber = 0;
                          finalScore = 0;
                          Navigator.of(context).popUntil((route) => route.isFirst);
                        },
                        child: Text("Exit",
                          style: TextStyle(
                              fontSize: 20.0,
                              fontFamily: "OpenSans",
                              color: Colors.white,
                            fontWeight: FontWeight.bold
                          ),),
                      ),

                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
    );

  }

}