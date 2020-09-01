import 'package:Bsc_syllabus/Models/allClasses.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DataBaseHelper {
  DataBaseHelper._();
  static final DataBaseHelper dataBaseHelper = DataBaseHelper._();
  static Database _database;

  List<String> faculties = [
    'Physics',
    'Food Technology',
    'Micro Biology',
    'Nutrition'
  ];
  List<String> stuYears = [
    'First Year',
    'Second Year',
    'Third Year',
    'Fourth Year',
  ];

  Future<Database> get database async {
    if (_database != null) {
      print('database exists');
      return _database;
    }
    _database = await createDatabase();
    return _database;
  }

  Future createDatabase() async {
    return await openDatabase(
      join(await getDatabasesPath(), 'database.db'),
      version: 1,
      onCreate: _onCreate,
    );
  }

  void _onCreate(db, version) async {
    print('Creating db');
    await db.execute("""
            CREATE TABLE Subject (
              id INTEGER PRIMARY KEY,
              title TEXT NOT NULL,
              faculty INTEGER NOT NULL,
              stu_year INTEGER NOT NULL,
              FOREIGN KEY (faculty) REFERENCES Faculty (id) 
                ON DELETE NO ACTION ON UPDATE NO ACTION
              FOREIGN KEY (stu_year) REFERENCES StudentYear (id) 
                ON DELETE NO ACTION ON UPDATE NO ACTION
            );""");
    await db.execute("""
            CREATE table Faculty(
            id INTEGER PRIMARY KEY,
            title TEXT NOT NULL
            );
            """);
    await db.execute("""
            CREATE table StudentYear(
            id INTEGER PRIMARY KEY,
            title TEXT NOT NULL
            );
            """);
    await db.execute("""
            CREATE TABLE Books (
              id INTEGER PRIMARY KEY,
              title TEXT NOT NULL,
  			      subject INTEGER NOT NULL,
  			      writer TEXT NOT NULL,
  			      book_url TEXT NOT NULL,
              FOREIGN KEY (subject) REFERENCES Subject (id) 
                ON DELETE NO ACTION ON UPDATE NO ACTION
            );
            """);
    await db.execute("""
      CREATE TABLE Notes (
              id INTEGER PRIMARY KEY,
              title TEXT NOT NULL,
  			      subject INTEGER NOT NULL,
  			      writer TEXT NOT NULL,
  			      note_url TEXT NOT NULL,
              FOREIGN KEY (subject) REFERENCES Subject (id) 
                ON DELETE NO ACTION ON UPDATE NO ACTION
            );
      """);
    await db.execute("""
      CREATE TABLE OldQuestions (
              id INTEGER PRIMARY KEY,
              question_date TEXT NOT NULL,
  			      subject INTEGER NOT NULL,
  			      question_url TEXT NOT NULL,
              FOREIGN KEY (subject) REFERENCES Subject (id) 
                ON DELETE NO ACTION ON UPDATE NO ACTION
            );
      """);
    await db.execute("""
      CREATE TABLE Syllabus (
              id INTEGER PRIMARY KEY,
              title TEXT NOT NULL,
  			      subject INTEGER NOT NULL,
  			      syllabus_url TEXT NOT NULL,
              FOREIGN KEY (subject) REFERENCES Subject (id) 
                ON DELETE NO ACTION ON UPDATE NO ACTION
            );
      """);

    //adding Faculty
    faculties.forEach((element) async {
      print(element + 'is element');
      await db.execute("""
      INSERT INTO Faculty (id,title) VALUES(null,'$element');
      """);
    });

    //adding year
    stuYears.forEach((element) async {
      await db.execute("""
      INSERT INTO StudentYear (id,title) VALUES(null,'$element');
      """);
    });
  }

  //getting list of all Tables
  Future<List<String>> getTableNames() async {
    final db = await database;
    var tableNames = (await db
            .query('sqlite_master', where: 'type = ?', whereArgs: ['table']))
        .map((row) => row['name'] as String)
        .toList(growable: false)
          ..sort();
    print('all tables are $tableNames');
    return tableNames;
  }

  //insert
  insertFaculty(Faculty faculty) async {
    final db = await database;
    var data = db.insert('Faculty', faculty.toMap());
    return data;
  }

  insertYear(Year year) async {
    final db = await database;
    var data = db.insert('StudentYear', year.toMap());
    return data;
  }

  insertBooks(Books books) async {
    final db = await database;
    var data = db.insert('Books', books.toMap());
    return data;
  }

  insertSyllabus(Syllabus syllabus) async {
    final db = await database;
    var data = db.insert('Syllabus', syllabus.toMap());
    return data;
  }

  insertOldQuestions(OldQuestions oldQuestions) async {
    final db = await database;
    var data = db.insert('OldQuestions', oldQuestions.toMap());
    return data;
  }

  insertNotes(Notes notes) async {
    final db = await database;
    var data = db.insert('Notes', notes.toMap());
    return data;
  }

  insertSubject(Subject subject) async {
    final db = await database;
    var data = db.insert('Subject', subject.toMap());
    return data;
  }

  //getElement
  Future<Faculty> getFacultyById(int id) async {
    final db = await database;
    var result = await db.query('Faculty', where: "id = ?", whereArgs: [id]);
    return result.isNotEmpty ? Faculty.fromJson(result.first) : Null;
  }

  Future<List<Year>> getFacultyYear() async {
    final db = await database;
    var result = await db.query('StudentYear');
    List<Year> allYear = List();
    result.forEach((element) {
      Year y = Year.fromJson(element);
      allYear.add(y);
    });
    return allYear;
  }

  Future<List<Subject>> getListOfSubjectsByFacultyAndYear(int facultyId,int yearId) async{
    final db = await database;
    var result = await db.query('Subject', where: "faculty = ? AND stu_year = ?", whereArgs: [facultyId,yearId]);
    List<Subject> allSubs = List();
    result.forEach((element) {
      Subject y = Subject.fromJson(element);
      allSubs.add(y);
    });
    return allSubs; 
  }

}
