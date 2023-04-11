import 'package:driver_spain_app/interfaces/ids_tests.dart';

import '../interfaces/license_test.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class LicenseService {
  Future<List<LicenseIds>> getTestIdsGroupsEasy() async {
    final querySnapshot = await FirebaseFirestore.instance
        .collection("testGroupsData")
        .where("difficulty", isEqualTo: "easy")
        .get();
    return querySnapshot.docs
        .map(
          (doc) => LicenseIds.fromMap(
            id: doc.id,
            map: doc.data(),
          ),
        )
        .toList();
  }

  Future<List<LicenseIds>> getTestIdsGroupsHard() async {
    final querySnapshot = await FirebaseFirestore.instance
        .collection("testGroupsData")
        .where("difficulty", isEqualTo: "hard")
        .get();
    return querySnapshot.docs
        .map(
          (doc) => LicenseIds.fromMap(
            id: doc.id,
            map: doc.data(),
          ),
        )
        .toList();
  }

  Future<List<LicenseIds>> getTestIdsGroupsPopular() async {
    final querySnapshot = await FirebaseFirestore.instance
        .collection("testGroupsData")
        .where("difficulty", isEqualTo: "mostpopular")
        .get();

    return querySnapshot.docs
        .map(
          (doc) => LicenseIds.fromMap(
            id: doc.id,
            map: doc.data(),
          ),
        )
        .toList();
  }

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
