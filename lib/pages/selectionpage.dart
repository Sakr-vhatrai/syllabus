import 'package:Bsc_syllabus/Components/CommonDrawer.dart';
import 'package:Bsc_syllabus/Models/allClasses.dart';
import 'package:Bsc_syllabus/pages/OldQuesionPage.dart';
import 'package:Bsc_syllabus/pages/Syllabuspage.dart';
import 'package:Bsc_syllabus/pages/booklist.dart';
import 'package:Bsc_syllabus/pages/notelist.dart';
import 'package:flutter/material.dart';

import '../Components/customflatbutton.dart';

class Selectpage extends StatelessWidget {
  final Subject subject;

  const Selectpage({Key key, this.subject, }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      drawer: CommonDrawer(),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(
                  child: CustomFlatbutton(
                    labeltext: 'Syllabus',
                    btnpress: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SyllabusPage(),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: CustomFlatbutton(
                    labeltext: 'Old questions',
                    btnpress: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OldQuestionPage(),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: CustomFlatbutton(
                    labeltext: 'Notes',
                    btnpress: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NoteList(),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: CustomFlatbutton(
                    labeltext: 'books',
                    btnpress: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BookList(),
                        ),
                      );
                    },
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
