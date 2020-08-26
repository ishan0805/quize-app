import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question('India\'s national animal is Tiger.',true),
    Question('India\'s national game is Cricket.', false),
    Question(' The first prime minister of India was Jawahar Lal Nehru.', true),
    Question('Uttar Pradesh is the largest state in India (In terms of area).', false),
    Question(' India is the world\'s second-largest English speaking country.', true),
    Question(' The Iron Man of India was Sardar Vallabhai Patel', true),
    Question(
        'The highest peak in India is Mount Everest.',
        false),
    Question(
        'The first woman prime minister of India was Indira Gandhi.',
        true),
    Question(
        ' The country that shares maximum boundry with India is China',
        false),
    Question(
        'India has the largest postal network in the world with over 1, 55,015 post offices. A single post office on an average serves a population of 7,175 people.',
        true),
    Question('Science day in Switzerland is dedicated to Ex-Indian President, APJ Abdul Kalam.', true),
    Question(
        'Nation Song of India is Jana Gana Mana.',
        false),
    Question(
        'The Indian national Kabaddi team has won all World Cups.',
        true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }


  bool isFinished()
  {
    if(_questionNumber==12)
      return true;
    else
      return false;
  }

  void reset()
  {
    _questionNumber=0;
  }

  //TODO: Step 4 Part B - Create a reset() method here that sets the questionNumber back to 0.
}
