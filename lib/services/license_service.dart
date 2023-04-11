import '../interfaces/license_test.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class RestaurantService {
  Future<List<LicenseTest>> getLicenseTest1() async {
    final querySnapshot = await FirebaseFirestore.instance
        .collection("driverData")
        .where("testId", isEqualTo: 1)
        .get();
    return querySnapshot.docs
        .map(
          (doc) => LicenseTest.fromMap(
            id: doc.id,
            map: doc.data(),
          ),
        )
        .toList();
  }

  Future<List<LicenseTest>> getLicenseTest2() async {
    final querySnapshot = await FirebaseFirestore.instance
        .collection("driverData")
        .where("testId", isEqualTo: 2)
        .get();
    return querySnapshot.docs
        .map(
          (doc) => LicenseTest.fromMap(
            id: doc.id,
            map: doc.data(),
          ),
        )
        .toList();
  }
}
