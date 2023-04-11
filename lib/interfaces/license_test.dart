class LicenseTest {
  final int testId;
  final int questionsId;
  final String question;
  final List<dynamic> options;
  final int correctIndex;
  final String answerCorrect;
  final String imagen;

  LicenseTest({
    required this.testId,
    required this.questionsId,
    required this.question,
    required this.options,
    required this.correctIndex,
    required this.answerCorrect,
    required this.imagen,
  });

  factory LicenseTest.fromMap({
    required String id,
    required Map<String, dynamic> map,
  }) {
    return LicenseTest(
      testId: map['testId'],
      questionsId: map['questionsId'],
      question: map['question'],
      options: map['options'],
      correctIndex: map['correctIndex'],
      answerCorrect: map['answerCorrect'],
      imagen: map['imagen'],
    );
  }
}
