import 'package:Bsc_syllabus/selectionpage.dart';
import 'package:flutter/material.dart';
class ChooseContent extends StatelessWidget {
   final String title;

  const ChooseContent({Key key, this.title}) : super(key: key); 
  @override
  Widget build(BuildContext context) {
    List sub =[
'Math',
'Stastics',
'Geology'
    ];
    return Scaffold(
      body: Column(
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
                SizedBox(height: 22,),
                Container(
                  child: Text('Subjects', style:TextStyle(fontSize: 20, color:Colors.blue,
                  fontWeight: FontWeight.bold)),
                ),
                Container(
                height: 400,
                width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      colorFilter: ColorFilter.mode(Colors.white, 
                      BlendMode.softLight),
                      image: AssetImage('assets/images/book.png')
                      
                    ),
                    
                  ),
                  child: Container(
                    color: Colors.white.withOpacity(0.8),
                    
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: sub.length,
                  itemBuilder: (BuildContext ctxt, int index) {
                    return ListTile(
                      onTap: (){
                        Navigator.push(context, 
                        MaterialPageRoute(builder:
                         (context)=>Selectpage(title:sub[index])));
                      },
                      trailing: Icon(Icons.arrow_forward_ios),
                      title: Text(
                        sub[index],
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: Colors.blue[800]
                        ),
                      ),
                    );
                  }),
            ),
                  ),
                
        ],
      ),
      
    );
  }
}