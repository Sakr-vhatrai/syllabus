class Faculty {
  final int id;
  final String name;

  Faculty({
    this.id,
    this.name,
  });

  factory Faculty.fromJson(Map<String, dynamic> data) {
    return Faculty(
      id: data['id'],
      name: data['title'],
    );
  }

  Map<String, dynamic> toMap() => {
        "id": id,
        "title": name,
      };
}

class Year {
  final int id;
  final String name;

  Year({
    this.id,
    this.name,
  });

  factory Year.fromJson(Map<String, dynamic> data) {
    return Year(
      id: data['id'],
      name: data['title'],
    );
  }

  Map<String, dynamic> toMap() => {
        "id": id,
        "title": name,
      };
}

class Books {
  final int id;
  final String title;
  final int subject;
  final String writer;
  final String bookUrl;

  Books({
    this.id,
    this.title,
    this.subject,
    this.writer,
    this.bookUrl,
  });

  factory Books.fromJson(Map<String, dynamic> data) {
    return Books(
      id: data['id'],
      title: data['title'],
      subject: data['subject'],
      writer: data['writer'],
      bookUrl: data['book_url']
    );
  }

  Map<String, dynamic> toMap() => {
      "id": id, 
      "title": title,
      "subject":subject,
      "writer":writer,
      "book_url":bookUrl
   };
}

class Syllabus {
  final int id;
  final String title;
  final int subject;
  final String syllabusUrl;

  Syllabus({
    this.id,
    this.title,
    this.subject,
    this.syllabusUrl,
  });

  factory Syllabus.fromJson(Map<String, dynamic> data) {
    return Syllabus(
      id: data['id'],
      title: data['title'],
      subject: data['subject'],
      syllabusUrl: data['book_url']
    );
  }

  Map<String, dynamic> toMap() => {
      "id": id, 
      "title": title,
      "subject":subject,
      "book_url":syllabusUrl
   };
}

class OldQuestions {
  final int id;
  final String questionDate;
  final int subject;
  final String questionUrl;

  OldQuestions({
    this.id,
    this.questionDate,
    this.subject,
    this.questionUrl,
  });

  factory OldQuestions.fromJson(Map<String, dynamic> data) {
    return OldQuestions(
      id: data['id'],
      questionDate: data['question_date'],
      subject: data['subject'],
      questionUrl: data['question_url']
    );
  }

  Map<String, dynamic> toMap() => {
      "id": id, 
      "question_date": questionDate,
      "subject":subject,
      "question_url":questionUrl
   };

}

class Notes {
  final int id;
  final String title;
  final int subject;
  final String writer;
  final String noteUrl;

  Notes({
    this.id,
    this.title,
    this.subject,
    this.writer,
    this.noteUrl,
  });

  factory Notes.fromJson(Map<String, dynamic> data) {
    return Notes(
      id: data['id'],
      title: data['title'],
      subject: data['subject'],
      writer: data['writer'],
      noteUrl: data['book_url']
    );
  }
  Map<String, dynamic> toMap() => {
      "id": id, 
      "title": title,
      "subject":subject,
      "writer":writer,
      "book_url":noteUrl
   };
}

class Subject {
  final int id;
  final String title;
  final int faculty;
  final int year;

  Subject({
    this.id,
    this.title,
    this.faculty,
    this.year,
  });

  factory Subject.fromJson(Map<String, dynamic> data) {
    return Subject(
      id: data['id'],
      faculty: data['faculty'],
      year: data['year'],
      title: data['title'],
    );
  }

  Map<String, dynamic> toMap() => {
        "id": id,
        "title": title,
        "faculty": faculty,
        "stu_year": year,
      };
}
