import 'dart:math';

class Game{
  final int _answer;
  int _totalGuesses;
  Game(): _answer =Random().nextInt(100)+1, _totalGuesses = 0 {
    print('The answer is: $_answer');
  }
  int get totalGuesses{
    return _totalGuesses;
  }
  int doGuess(int num){
    _totalGuesses++;
    if(num>_answer){
      return 1;
    }else if (num<_answer){
      return-1;
    }else{
      return 0;
    }
  }

}