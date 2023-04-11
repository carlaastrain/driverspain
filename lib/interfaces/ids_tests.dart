class LicenseIds {
  final int testIdGroup;
  final String imagen;
  final String difficulty;

  LicenseIds({
    required this.testIdGroup,
    required this.imagen,
    required this.difficulty,
  });

  factory LicenseIds.fromMap({
    required String id,
    required Map<String, dynamic> map,
  }) {
    return LicenseIds(
      testIdGroup: map['testIdGroup'],
      imagen: map['imagen'],
      difficulty: map['difficulty'],
    );
  }
}
