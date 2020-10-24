import 'package:flutter/material.dart'; //imported flutter material package

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}
Widget _button (String number){ // Creating a method of return type Widget with number and function f as a parameter
  return MaterialButton(
    height: 100.0,
    child: Text(number,
        style:  TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),
    ),
    textColor: Colors.black,



  );
}
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),

      ),
      body:Container(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
        Container( // Display Container
        constraints: BoxConstraints.expand( // Creating a boxed container
            height:  100.0,
      ),
      alignment: Alignment.bottomRight, // Aligning the text to the bottom right of our display screen
      color: Colors.grey[800], // Seting the background color of the container
      child: Text(
        "0",
        style: TextStyle( // Styling the text
            fontSize: 50.0,
            color: Colors.white
        ),
        textAlign: TextAlign.right,
      ),
    ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _button("C"), // using custom widget _button
                _button("()"),
                _button("%"),
                _button("/"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[

                _button("7"), // using custom widget _button
                _button("8"),
                _button("9"),
                _button("x"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[

                _button("4"), // using custom widget _button
                _button("5"),
                _button("6"),
                _button("-"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[

                _button("1"), // using custom widget _button
                _button("2"),
                _button("3"),
                _button("+"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[

                _button("+/-"), // using custom widget _button
                _button("0"),
                _button("."),
                _button("="),
              ],
            ),
          ],
        ),

      ),
    );
  }
}
