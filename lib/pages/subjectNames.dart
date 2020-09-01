import 'package:Bsc_syllabus/Models/allClasses.dart';
import 'package:Bsc_syllabus/Models/databaseClient.dart';
import 'package:Bsc_syllabus/pages/selectionpage.dart';
import 'package:flutter/material.dart';

class ChooseContent extends StatelessWidget {
  final int facultyId;
  final int yearId;
  final db = DataBaseHelper.dataBaseHelper;
  ChooseContent({
    Key key,
    this.facultyId,
    this.yearId,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height * 0.3,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(color: Colors.blue),
            child: FutureBuilder(
                future: db.getFacultyById(facultyId),
                builder: (_, AsyncSnapshot<Faculty> snapshot) {
                  if (snapshot.hasData) {
                    return Text(
                      snapshot.data.name,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 50,
                          color: Colors.white),
                    );
                  }
                  return Text('');
                },
              ),
          ),
          SizedBox(
            height: 22,
          ),
          Container(
            child: Text(
              'Subjects',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: 400,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                colorFilter:
                    ColorFilter.mode(Colors.white, BlendMode.softLight),
                image: AssetImage('assets/images/book.png'),
              ),
            ),
            child: Container(
              color: Colors.white.withOpacity(0.8),
              child: FutureBuilder(
                future: db.getListOfSubjectsByFacultyAndYear(facultyId, yearId),
                builder: (context, snapshot) {
                  if(!snapshot.hasData){
                    return Text('data');
                  }
                  List<Subject> sub = snapshot.data;
                  return ListView.builder(
                    shrinkWrap: true,
                    itemCount: sub.length,
                    itemBuilder: (BuildContext ctxt, int index) {
                      return ListTile(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Selectpage(
                                subject: sub[index],
                              ),
                            ),
                          );
                        },
                        trailing: Icon(Icons.arrow_forward_ios),
                        title: Text(
                          sub[index].title,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: Colors.blue[800],
                          ),
                        ),
                      );
                    },
                  );
                }
              ),
            ),
          ),
        ],
      ),
    );
  }
}
