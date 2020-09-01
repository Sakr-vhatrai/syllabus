// import 'dart:collection';

// import 'package:Bsc_syllabus/Models/allClasses.dart';
// import 'package:Bsc_syllabus/Models/databaseClient.dart';
// import 'package:flutter/cupertino.dart';

// class DataProvider extends ChangeNotifier{
//   final db = DataBaseHelper.dataBaseHelper;
//   List<Books> _books = [];
//   List<Notes> _notes = [];
//   List<Faculty> _faculty = [];
//   List<Year> _years = [];
//   List<Subject> _subjects = [];
//   List<Syllabus> _syllabus = [];
//   List<OldQuestions> _oldQues = [];

//   UnmodifiableListView<Books> get books => UnmodifiableListView(_books);
//   UnmodifiableListView<Notes> get notes => UnmodifiableListView(_notes);
//   UnmodifiableListView<Faculty> get faculty => UnmodifiableListView(_faculty);
//   UnmodifiableListView<Year> get years => UnmodifiableListView(_years);
//   UnmodifiableListView<Subject> get subjects => UnmodifiableListView(_subjects);
//   UnmodifiableListView<Syllabus> get syllabus => UnmodifiableListView(_syllabus);
//   UnmodifiableListView<OldQuestions> get oldQues => UnmodifiableListView(_oldQues); 

//   Future<void> getSubject(int facultyId, int yearId) async{
//     _subjects = await db.getListOfSubjectsByFacultyAndYear(facultyId, yearId);
//     notifyListeners();
//   }

//   Future<void> getFaculty(){

//   }

// }