import 'package:Bsc_syllabus/Models/databaseClient.dart';
import 'package:Bsc_syllabus/Models/allClasses.dart';
import 'package:Bsc_syllabus/pages/subjectNames.dart';
import 'package:flutter/material.dart';

import '../Components/CommonDrawer.dart';

class YearDetail extends StatelessWidget {
  final db = DataBaseHelper.dataBaseHelper;
  final int id;
  YearDetail({Key key, this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List year = ['First Year', 'Second Year', 'Third Year', 'Fourth Year'];
    return Scaffold(
      drawer: CommonDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Colors.blue),
              child: FutureBuilder(
                future: db.getFacultyById(id),
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
            Container(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: year.length,
                  itemBuilder: (BuildContext ctxt, int index) {
                    return ListTile(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ChooseContent(
                              facultyId: id,
                              yearId: (index + 1),
                            ),
                          ),
                        );
                      },
                      trailing: Icon(Icons.arrow_forward_ios),
                      title: Text(
                        year[index],
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue[800]),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
