import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Coder extends StatefulWidget {
  const Coder({Key? key}) : super(key: key);

  @override
  _CoderState createState() => _CoderState();
}

class _CoderState extends State<Coder> {
  TextEditingController obj_contoller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.green,
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Login"),
            SizedBox(
              height: 20,

            ),

            Container(
              decoration: BoxDecoration(
                color: Colors.white,

                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  border: Border.all(color: Colors.amber)),
              child: Center(
                child: TextField(
                  controller: obj_contoller,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  border: Border.all(color: Colors.amber)),
              child: Center(
                child: TextField(
                  controller: obj_contoller,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              //     disabledColor: Colors.red,
              // disabledTextColor: Colors.black,
              padding: const EdgeInsets.all(20),
              textColor: Colors.white,
              color: Colors.green,
              onPressed: () {
                setState(() {
                  //    istapped = 'Button tapped';
                });
              },
              child: Text('Enabled Button'),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Sign up"),
                Text("Forgot password"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
