import 'package:flutter/material.dart';

import '../aboutus.dart';

class CommonDrawer extends StatelessWidget {
  const CommonDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          ListTile(
            title: Text('About Us'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Aboutus()));
            },
          ),
          ListTile(
            title: Text('Terms and Conditions'),
            onTap: () {
            
            },
          ),
        ],
      ),
    );
  }
}
