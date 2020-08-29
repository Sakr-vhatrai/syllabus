import 'package:Bsc_syllabus/pages/yearpage.dart';
import 'package:flutter/material.dart';

import '../Components/CommonDrawer.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      drawer: CommonDrawer(),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.white, Colors.white60])),
        // color: Colors.blue,
        child: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            child: Text(
              'BSC. Solutions',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            'Available Faculties',
            style: TextStyle(
                color: Colors.blue.withAlpha(250), fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                YearDetail(title: 'physics')));
                  },
                  child: Card(
                    elevation: 0,
                    shadowColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    color: Colors.blue.withOpacity(0.7),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  // border:Border.all(
                                  //   color: Colors.red,
                                  //   width: 3
                                  //)
                                  ),
                              child: Image(
                                image: AssetImage('assets/images/atom.png'),
                              )),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Text(
                              'Physics',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                YearDetail(title: 'Food Technology')));
                  },
                  child: Card(
                    elevation: 0,
                    shadowColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    color: Colors.blue.withOpacity(0.7),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  // border:Border.all(
                                  //   color: Colors.red,
                                  //   width: 3
                                  //)
                                  ),
                              child: Image(
                                image: AssetImage('assets/images/atom.png'),
                              )),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Text(
                              'Food Tech.',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                YearDetail(title: 'Micro Biology')));
                  },
                  child: Card(
                    elevation: 0,
                    shadowColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    color: Colors.blue.withOpacity(0.7),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  // border:Border.all(
                                  //   color: Colors.red,
                                  //   width: 3
                                  //)
                                  ),
                              child: Image(
                                image: AssetImage('assets/images/bond.png'),
                              )),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Text(
                              'Micro Biology',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                YearDetail(title: 'Nutrition')));
                  },
                  child: Card(
                    elevation: 0,
                    shadowColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    color: Colors.blue.withOpacity(0.7),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  // border:Border.all(
                                  //   color: Colors.red,
                                  //   width: 3
                                  //)
                                  ),
                              child: Image(
                                image: AssetImage('assets/images/break.png'),
                              )),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              'Nutrition',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(child: Text('koi ya k lekhna khojya thye'))
        ])),
      ),
    );
  }
}

