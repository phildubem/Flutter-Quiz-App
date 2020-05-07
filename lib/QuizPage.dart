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
    ['Python', 'TypeScript', 'Dart', 'Vue'],
    ['Stateless', 'Widgets', 'Stateful', 'Blocks'],
    ['ModeBanner', 'Banner', 'MaterialGrid', 'ShowBanner'],
    ['Compile New Codes', 'Less Time', 'Full Compile', 'State Preserve'],
    ['Xamarin', 'React Native', 'Swift', 'Flutter'],
    ['MongoDB', 'Auth0', 'Firebase', 'Parse'],
    ['Project General Settings', 'Project Assets', 'Project Dependencies', 'Project Readme'],
    ['Shared State', 'Ephemeral State', 'UI State', 'Local State'],
    ['Alibaba', 'Tecent', 'Skype', 'Google Ads']
  ];

  var correctAnswers = [
    'All Listed', 'Dart', 'Widgets', 'CheckedModeBanner', 'Full Compile',
    'Swift', 'Firebase', 'Project Readme', 'Shared State', 'Skype',
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
        appBar: AppBar(
          title: Text("Quiz App"),
          backgroundColor: Colors.deepPurple,
        ),
        body: Container(
          margin: EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 5.0),
          alignment: Alignment.topCenter,
          child: Column(
            children: <Widget>[
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
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(5.0)
                      ),
                      child: Text("Question ${questionNumber + 1} of ${quiz.questions.length}",
                      style: TextStyle(
                        fontSize: 22.0
                      ),),
                    ),
                    Container(
                      padding: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(5.0)
                      ),
                      child: Text("Score: $finalScore",
                        style: TextStyle(
                            fontSize: 22.0
                        ),),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                height: 200.0,
                decoration: BoxDecoration(
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
              fontFamily: "AlegreyaSans",
              fontSize: 20.0,
            ),),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  RaisedButton (
                    padding: EdgeInsets.all(5.0),
                    color: Colors.deepPurple,
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
                      fontSize: 20.0,
                      fontFamily: "OpenSans",
                      color: Colors.white
                    ),),
                  ),

                  RaisedButton (
                    padding: EdgeInsets.all(5.0),
                    color: Colors.deepPurple,
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
                          fontSize: 20.0,
                          fontFamily: "OpenSans",
                          color: Colors.white
                      ),),
                  ),
                ],
              ),

              SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  RaisedButton (
                    padding: EdgeInsets.all(5.0),
                    color: Colors.deepPurple,
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
                          fontSize: 20.0,
                          fontFamily: "OpenSans",
                          color: Colors.white
                      ),),
                  ),

                  RaisedButton (
                    padding: EdgeInsets.all(5.0),
                    color: Colors.deepPurple,
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
                          fontSize: 20.0,
                          fontFamily: "OpenSans",
                          color: Colors.white
                      ),),
                  ),
                ],
              ),

              SizedBox(height: 10.0),
              Container(
                padding: EdgeInsets.all(5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    RaisedButton (
                      padding: EdgeInsets.all(5.0),
                      color: Colors.greenAccent,
                      onPressed: () {
                        updateQuestion();
                      },
                      child: Text("Next Question",
                        style: TextStyle(
                            fontSize: 20.0,
                            fontFamily: "OpenSans",
                            color: Colors.white
                        ),),
                    ),

                    RaisedButton (
                      padding: EdgeInsets.all(5.0),
                      color: Colors.redAccent,
                      onPressed: () {
                        resetQuiz();
                      },
                      child: Text("Exit",
                        style: TextStyle(
                            fontSize: 20.0,
                            fontFamily: "OpenSans",
                            color: Colors.white
                        ),),
                    ),

                  ],
                ),
              )
            ],
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

        ),
    );

  }
}