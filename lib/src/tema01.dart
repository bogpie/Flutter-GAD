import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
  String textEUR = '';

  // a variable that changes
  String textRON = ' ';
  double amountEUR = 0;
  double amountRON = 0;
  String error; // will change

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Currency convertor'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Image.network(
              'https://previews.123rf.com/images/stefanphoto/stefanphoto1203/stefanphoto120300005/12802153-romanian-banknotes-close-up.jpg',
            ),
            TextField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: 'enter the amount in EUR',
                errorText: error,
              ),
              onChanged: (String value) {
                textEUR = value;
              },
            ),
            const SizedBox(height: 8),
            RaisedButton(
              child: const Text('CONVERT!'),
              onPressed: () {
                if (double.tryParse(textEUR) == null) {
                  setState(
                    () {
                      textRON = '';
                      // updating the error variable in setState
                      error = 'please enter a number';
                    },
                  );
                } else
                  setState(
                    () {
                      amountEUR = double.parse(textEUR);
                      print('amount in euro is ' + amountEUR.toString());
                      amountRON = amountEUR * 4.50;
                      textRON = amountRON.toStringAsFixed(2) + ' RON';
                      error = null;
                    },
                  );
              },
            ),
            Text(
              textRON,
              style: const TextStyle(color: Colors.grey),
              textScaleFactor: 3,
            )
          ],
        ),
      ),
    );
  }
}
