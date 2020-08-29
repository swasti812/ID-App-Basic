import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: NinjaCard(),

));

class NinjaCard  extends StatefulWidget {

  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {

  int level =1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('ID App'),
        centerTitle: true,
        backgroundColor: Colors.green[300],
        elevation: 0,
      ),
      backgroundColor: Colors.black45,
      body: Padding(padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:<Widget> [

          Center(
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/Passport Pic.JPG'),
              radius: 90.0,
            ),
          ),
           Divider(
             height: 90.0,
             color: Colors.grey[900],
           ),

          Text(
            'NAME',
          style: TextStyle(
            color:Colors.grey,
            letterSpacing:2.0,
          )

          ),
          SizedBox(height: 10.0,),
          Text(
              'Swasti',
              style: TextStyle(
                color:Colors.cyan,
                fontWeight: FontWeight.bold,
                fontSize:28.0,
                letterSpacing:2.0,
              ),

          ),
          SizedBox(height: 10.0,),
          Text(
            '$level',
            style: TextStyle(
              color:Colors.cyan,
              fontWeight: FontWeight.bold,
              fontSize:28.0,
              letterSpacing:2.0,
            ),

          ),
          SizedBox(height: 30.0),
          Row(

            children:<Widget> [
              Icon(Icons.email,
              color:Colors.grey),
              SizedBox(width: 10.0),
              Text('swasti.tiwari@gmail.com',
              style:TextStyle(
                letterSpacing: 2.0,
                fontWeight: FontWeight.w100,
                color: Colors.grey[400],
              ))


          ],)

        ],
      )),
        floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            level+=1;
          });
        },
    child: Icon(Icons.add),
          backgroundColor: Colors.cyan,

        ),
    );
  }
}




