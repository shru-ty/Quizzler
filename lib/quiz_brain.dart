import 'question.dart';
class QuizBrain{

  int _questionNumber=0;

  List<Question> questionBank =[
    Question(a:'Do you know shruti tripathi?',b: true),
    Question(a:'Is she your close friend?',b:true),
    Question(a:'Is her vibe negative?',b:false),
    Question(a:'Does she makes you happy?',b:true),
    Question(a:'Does she suck at being a good friend?',b:false),
    Question(a:'She makes you feel uncomfortable',b:false),
    Question(a:'Do you love her ?',b:true),
    Question(a:'Is she full of problems?',b:false),
    Question(a:'Does she makes you feel butterflies in your stomach?',b:true),
  ];

  void nextQuestion(){
    if(_questionNumber<questionBank.length-1)
    _questionNumber++;
  }

  String getQuestionText(){
    return questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer(){
    return questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= questionBank.length - 1) {
      //TODO: Step 3 Part B - Use a print statement to check that isFinished is returning true when you are indeed at the end of the quiz and when a restart should happen.

      print('Now returning true');
      return true;

    } else {
      return false;
    }
  }

  //TODO: Step 4 part B - Create a reset() method here that sets the questionNumber back to 0.
  void reset() {
    _questionNumber = 0;
  }

}
