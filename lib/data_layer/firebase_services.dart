import 'package:cloud_firestore/cloud_firestore.dart';

import '../constants/strings.dart';

class FirestoreService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  // Fetch all countries
  Future<List<Map<String, dynamic>>> getCountries() async {
    QuerySnapshot snapshot = await _db.collection(countries).get();
    return snapshot.docs
        .map((doc) => doc.data() as Map<String, dynamic>)
        .toList();
  }

  // Fetch grade 1 for a specific country
  Future<Map<String, dynamic>> getGradeYear(
      String countryId, String gradeYear) async {
    DocumentSnapshot doc = await _db
        .collection(countries)
        .doc(countryId)
        .collection(grades)
        .doc(gradeYear)
        .get();
    return doc.data() as Map<String, dynamic>;
  }

  // Fetch semesters for grade 1
  Future<List<Map<String, dynamic>>> getSemestersForGradeYear(
      String countryId, String gradeYear) async {
    QuerySnapshot snapshot = await _db
        .collection(countries)
        .doc(countryId)
        .collection(grades)
        .doc(gradeYear)
        .collection(semesters)
        .get();
    return snapshot.docs
        .map((doc) => doc.data() as Map<String, dynamic>)
        .toList();
  }

  // Fetch subjects for semester 1 of grade 1
  Future<List<Map<String, dynamic>>> getSubjectsForSemesterForGradeYear(
      String countryId, String gradeYear, String semester) async {
    QuerySnapshot snapshot = await _db
        .collection(countries)
        .doc(countryId)
        .collection(grades)
        .doc(gradeYear)
        .collection(semesters)
        .doc(semester)
        .collection(subjects)
        .get();
    print(snapshot.docs
        .map((doc) => doc.data() as Map<String, dynamic>)
        .toList());
    return snapshot.docs
        .map((doc) => doc.data() as Map<String, dynamic>)
        .toList();
  }

  // Fetch units for a specific subject in grade 1
  Future<List<Map<String, dynamic>>> getUnitsForSubjectIngradeYear(
      String countryId, String subjectId, String gradeYear, String semester) async {
    QuerySnapshot snapshot = await _db
        .collection(countries)
        .doc(countryId)
        .collection(grades)
        .doc(gradeYear)
        .collection(semesters)
        .doc(semester)
        .collection(subjects)
        .doc(subjectId)
        .collection(units)
        .get();
    return snapshot.docs
        .map((doc) => doc.data() as Map<String, dynamic>)
        .toList();
  }

  // Fetch lessons for a specific unit in grade 1
  Future<List<Map<String, dynamic>>> getLessonsForUnitIngradeYear(
      String countryId,
      String subjectId,
      String unitId,
      String gradeYear) async {
    QuerySnapshot snapshot = await _db
        .collection(countries)
        .doc(countryId)
        .collection(grades)
        .doc(gradeYear)
        .collection(semesters)
        .doc('semester1')
        .collection(subjects)
        .doc(subjectId)
        .collection(units)
        .doc(unitId)
        .collection(lessons)
        .get();
    return snapshot.docs
        .map((doc) => doc.data() as Map<String, dynamic>)
        .toList();
  }

  // Fetch homework questions for a specific subject in grade 1
  Future<List<Map<String, dynamic>>> getHomeworkQuestionsForSubjectInGradeYear(
      String countryId, String subjectId, String gradeYear) async {
    QuerySnapshot snapshot = await _db
        .collection(countries)
        .doc(countryId)
        .collection(grades)
        .doc(gradeYear)
        .collection(semesters)
        .doc('semester1')
        .collection(subjects)
        .doc(subjectId)
        .collection('homeworkQuestions')
        .get();
    return snapshot.docs
        .map((doc) => doc.data() as Map<String, dynamic>)
        .toList();
  }

  // Fetch answers for a specific homework question in grade 1
  Future<List<Map<String, dynamic>>> getHomeworkAnswersForQuestionInGradeYear(
      String countryId,
      String subjectId,
      String questionId,
      String gradeYear) async {
    QuerySnapshot snapshot = await _db
        .collection(countries)
        .doc(countryId)
        .collection(grades)
        .doc(gradeYear)
        .collection(semesters)
        .doc('semester1')
        .collection(subjects)
        .doc(subjectId)
        .collection('homeworkQuestions')
        .doc(questionId)
        .collection('answers')
        .get();
    return snapshot.docs
        .map((doc) => doc.data() as Map<String, dynamic>)
        .toList();
  }

  // Fetch material content for a specific subject in grade 1
  Future<Map<String, dynamic>> getMaterialContentForSubjectInGradeYear(
      String countryId, String subjectId, String gradeYear) async {
    DocumentSnapshot doc = await _db
        .collection(countries)
        .doc(countryId)
        .collection(grades)
        .doc(gradeYear)
        .collection(semesters)
        .doc('semester1')
        .collection(subjects)
        .doc(subjectId)
        .collection('materialContent')
        .doc('textbook')
        .get();
    return doc.data() as Map<String, dynamic>;
  }
}
