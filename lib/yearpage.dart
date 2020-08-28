import 'package:Bsc_syllabus/mainpage.dart';
import 'package:flutter/material.dart';

import 'Components/CommonDrawer.dart';

class YearDetail extends StatelessWidget {
  final String title;

  const YearDetail({Key key, this.title}) : super(key: key);

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
              child: Text(
                title,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                    color: Colors.white),
              ),
            ),
            Container(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: year.length,
                  itemBuilder: (BuildContext ctxt, int index) {
                    return ListTile(
                      onTap: (){
                        Navigator.push(context, 
                        MaterialPageRoute(builder:
                         (context)=>ChooseContent(title:year[index])));
                      },
                      trailing: Icon(Icons.arrow_forward_ios),
                      title: Text(
                        year[index],
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue[800]
                        ),
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
