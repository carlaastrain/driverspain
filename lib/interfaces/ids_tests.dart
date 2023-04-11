class LicenseIds {
  final int testIdGroup;
  final String imagen;
  final String difficulty;
  final String quantityQuestions;

  LicenseIds({
    required this.testIdGroup,
    required this.imagen,
    required this.difficulty,
    required this.quantityQuestions,
  });

  factory LicenseIds.fromMap({
    required String id,
    required Map<String, dynamic> map,
  }) {
    return LicenseIds(
        testIdGroup: map['testIdGroup'],
        imagen: map['imagen'],
        difficulty: map['difficulty'],
        quantityQuestions: map['quantityQuestions']);
  }
}
