import 'package:Bsc_syllabus/pages/yearpage.dart';
import 'package:flutter/material.dart';

import '../Components/CommonDrawer.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      drawer: CommonDrawer(),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.white,
              Colors.white60,
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
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
                color: Colors.blue.withAlpha(250),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                MenuCard(
                  cardLabel: 'Physics',
                  cardImg: 'assets/images/atom.png',
                  cardId: 1,
                ),
                SizedBox(
                  width: 10,
                ),
                MenuCard(
                  cardLabel: 'Food Tech.',
                  cardImg: 'assets/images/atom.png',
                  cardId: 2,
                ),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              children: [
                MenuCard(
                  cardLabel: 'Micro Biology',
                  cardImg: 'assets/images/bond.png',
                  cardId: 3,
                ),
                SizedBox(
                  width: 10,
                ),
                MenuCard(
                  cardLabel: 'Nutrition',
                  cardImg: 'assets/images/break.png',
                  cardId: 4,
                )
              ],
            ),
            Container(
              child: Text('koi ya k lekhna khojya thye'),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}

class MenuCard extends StatelessWidget {
  const MenuCard({
    Key key,
    @required this.cardId,
    @required this.cardLabel,
    @required this.cardImg,
  }) : super(key: key);
  final String cardLabel;
  final String cardImg;
  final int cardId;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => YearDetail(id: cardId),
            ),
          );
        },
        child: Card(
          elevation: 0,
          shadowColor: Colors.blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          color: Colors.blue.withOpacity(0.7),
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  child: Image.asset(cardImg),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text(
                    cardLabel,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
