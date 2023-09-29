class QuizModel {
  String question;
  List<String> options;
  String rightAnswer;
  String givenAnswer;

  QuizModel(
      {required this.question,
      required this.options,
      required this.rightAnswer,
      required this.givenAnswer});
}

final List<QuizModel> questionList = [
  QuizModel(
      question: ' Which one is not a valid type in Dart?',
      options: ['int', 'boolean', 'String', 'double'],
      rightAnswer: 'boolean',
      givenAnswer: ''),
  QuizModel(
      question: ' Dart Programming Language is designed by-',
      options: [
        'James Gosling',
        'Bjarne Stroustrup',
        'Lars Bak & Kasper Lund',
        'Guido Van Rossum'
      ],
      rightAnswer: 'Lars Bak & Kasper Lund',
      givenAnswer: ''),
  QuizModel(
      question: ' Which one is true?',
      options: [
        'Set in Dart only contains uniqe items',
        'Dynamic properties cannot be changed at runtime',
        'All Dart classes are immutable by default',
        'Final classes cannot be instantiated'
      ],
      rightAnswer: 'Set in Dart only contains uniqe items',
      givenAnswer: ''),
  QuizModel(
      question: ' Which operator is used in this statement a == b?',
      options: ['Assignment', ' Null Assertion', 'Equality', 'No equals'],
      rightAnswer: 'Equality',
      givenAnswer: ''),
  QuizModel(
      question: 'Which one is true?',
      options: [
        'Final variables are set at compile time',
        'Keys in a Map should always be String',
        'Late variables can be declared without initial values',
        'Constructor in a class should always be public'
      ],
      rightAnswer: 'Late variables can be declared without initial values',
      givenAnswer: ''),
  QuizModel(
      question: ' Which one is true:',
      options: [
        'Dart allows multiple inheritance using extends keyword',
        '2 * (4 - 1) == 12 / 3 * 2',
        ' Abstract Classes cannot have a constructor',
        ' None of these are true'
      ],
      rightAnswer: 'None of these are true',
      givenAnswer: ''),
  QuizModel(
      question: ' Mixin is a -',
      options: [
        'Special data type that holds constant value',
        'Special class that can be mixed with other classes',
        'Special function that is called by the compiler',
        'A Library',
      ],
      rightAnswer: 'Special class that can be mixed with other classes',
      givenAnswer: ''),
  QuizModel(
      question: 'When you declare a variable to type “var” -:',
      options: [
        'it can take any value at initialization',
        'it can be initialized later',
        'it’s value cannot be changed at runtime',
        ' None of the above'
      ],
      rightAnswer: 'it can take any value at initialization',
      givenAnswer: ''),
  QuizModel(
      question:
          ' Which of the following does not establish a relationship between classes?',
      options: ['Inheritance', 'Mixin', 'Association', 'Polymorphism'],
      rightAnswer: 'Mixin',
      givenAnswer: ''),
  QuizModel(
      question: ' A Dart Function -',
      options: [
        ' Cannot take optional parameters',
        ' Can be passed as a parameter to other function',
        ' Cannot return another function',
        ' Can be treated as an Object and cannot be instantiated'
      ],
      rightAnswer: ' Can be passed as a parameter to other function',
      givenAnswer: ''),
];
