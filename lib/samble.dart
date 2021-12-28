import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zivitarekenmechine/Coder.dart';

class samble extends StatefulWidget {
  const samble({Key? key}) : super(key: key);

  @override
  _sambleState createState() => _sambleState();
}

class _sambleState extends State<samble> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        elevation: 4,
        title: Text("CODER ACADEMY"),
        centerTitle: true,
        actions: [IconButton(
          onPressed: (){
            print("welcome");
          },
          icon: Icon(Icons.chat),

        ),
          IconButton(
            onPressed: (){
              print("hai");
            },
            icon: Icon(Icons.access_alarm),

          )

],
      ),
     drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Text("HEY!"),
              decoration: BoxDecoration(
                color: Colors.cyanAccent,


              ),

            ),




          ],
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.height,
        color: Colors.lightBlueAccent,
        child: Center(
          child: RaisedButton(
            onPressed: (){
              Navigator.pop(context,MaterialPageRoute(builder: (context)=> Coder()));
            },
            onLongPress: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>Coder()));
            },
            child: Text("click.."),
            textColor: Colors.amber,
            splashColor: Colors.deepOrange,
            color: Colors.black,
            elevation: 4,
            shape:StadiumBorder(),
            padding: EdgeInsets.all(40),
            disabledColor: Colors.deepPurpleAccent,
            disabledTextColor: Colors.green,
            highlightColor: Colors.brown,

          ),


      )


    ),






    );
  }
}
