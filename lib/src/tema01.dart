import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:validators/validators.dart'; //actually isNumeric() doesn't support rational numbers

void main() {
  runApp(Tema01App());
}

class Tema01App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String text = ''; // will change
  double amountEUR = 0;
  double amountRON = 0;
  String error = ''; // will change

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Currency convertor'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(

            children: <Widget>[

              Image.network("https://previews.123rf.com/images/stefanphoto/stefanphoto1203/stefanphoto120300005/12802153-romanian-banknotes-close-up.jpg",
                //height: 300,
              ),

              TextField(
                keyboardType: TextInputType.phone,
                //
                decoration: InputDecoration(
                    hintText: 'enter the amount in EUR',
                    errorText: error // used in UI for build method

                    ),
                onChanged: (String value) {
                  text = value; // each time we change the text we update the value, no need for refreshing with setState
                },
              ),

              SizedBox(height: 8),

              RaisedButton(
                child: Text('CONVERT!'),
                onPressed: () {
                  if (double.tryParse(text) == null) {
                    setState(() {
                      text = '';
                      // updating the error variable in setState
                      error = 'please enter a number';
                    });
                  }
                  else
                    setState(() {
                      amountEUR = double.parse(text);
                      print("amount in euro is " + amountEUR.toString());
                      amountRON = amountEUR * 4.50;
                      text = amountRON.toStringAsFixed(2) + " RON";
                      error = null;
                    });
                },
              ),


              Text(
                text,
                style: TextStyle(
                    color: Colors.grey),
                textScaleFactor: 3,
              )

            ],
          ),
        ));
  }
}
