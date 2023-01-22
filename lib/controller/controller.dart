import 'dart:ui';

class Controller{

  int _score;
  int _counter;
  int _ic;


  int questionIndex;
  int optionIndex1;
  int optionIndex2;
  int optionIndex3;
  int optionIndex4;


  int answerListIndex ;

  Color  answerColor1;
  Color  answerColor2;
  Color  answerColor3;
  Color  answerColor4;

  Controller(
      this._score,
      this._counter,
      this._ic,
      this.questionIndex,
      this.optionIndex1,
      this.optionIndex2,
      this.optionIndex3,
      this.optionIndex4,
      this.answerListIndex,
      this.answerColor1,
      this.answerColor2,
      this.answerColor3,
      this.answerColor4);



setAnswerColor1(Color value){
  answerColor1=value;
}
  setAnswerColor2(Color value){
    answerColor2=value;
  }
  setAnswerColor3(Color value){
    answerColor3=value;
  }
  setAnswerColor4(Color value){
    answerColor4=value;
  }

  setIc(int value) {
    _ic = value;
  }

  setScore(int value) {
    _score = value;
  }

  setCounter(int value) {
    _counter = value;
  }




  int getCounter() {
    return _counter;
  }
  int getScore(){
    return _score;
  }
  int getIc(){
    return _ic;
  }





  void resetScore() {

      _score = 0;

  }
  void incrementScore(){
    _score++;

  }
  void incrementIc(){
    _ic++;
  }
  void incrementCounter(){
    _counter++;
  }



}
