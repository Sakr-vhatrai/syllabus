import 'dart:io';

class Subject{
  String title;
  File syllabus;
  List<File> oldQuestions;
  List<File> notes;
  List<File> books;

  Subject({
    this.title,
    this.syllabus,
    this.notes,
    this.oldQuestions,
    this.books,
  });

  factory Subject.fromJson(Map<String,dynamic>data){
    return Subject(
      title: data['title'],
      syllabus: data['syllabus'],
      oldQuestions: data['old_questions'],
      notes: data['notes'],
      books: data['books'],
    );
  }
}