import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
//import 'package:validators/validators.dart'; //actually isNumeric() doesn't support rational numbers

void main() {
  runApp(Tema02App());
}

class Tema02App extends StatelessWidget {
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
  String feedbackText = '';
  String buttonText = 'Guess';
  String triedText = '';
  String guessText = '';
  static Random random = Random();
  int randomNumber = random.nextInt(100) + 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Guess my number'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          // ignore: prefer_const_literals_to_create_immutables
          child: Column(children: <Widget>[
            const Text(
              "I'm thinking of a number between 1 and 100.",
              textScaleFactor: 1.75,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            const Text(
              "It's your turn to guess my number.",
              textScaleFactor: 1.5,
              textAlign: TextAlign.center,
            ),
            Text(
              triedText,
              textScaleFactor: 2,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.black54),
            ),
            Text(
              feedbackText,
              textScaleFactor: 2,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.black54),
            ),
            const SizedBox(height: 32),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: Column(mainAxisSize: MainAxisSize.min,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: <Widget>[
                      const Text(
                        'Try a number!',
                        textScaleFactor: 2.5,
                        style: TextStyle(color: Colors.grey),
                      ),
                      const SizedBox(height: 16),
                      TextField(
                        keyboardType: TextInputType.number,
                        onChanged: (String value) {
                          guessText = value;
                        },
                      ),
                      const SizedBox(height: 16),
                      RaisedButton(
                        child: Text(buttonText),
                        onPressed: () {
                          setState(() {
                            if (buttonText == 'Reset') {
                              randomNumber = random.nextInt(100) + 1;
                              feedbackText = '';
                              triedText = '';
                              buttonText = 'Guess';
                            } else if (int.tryParse(guessText) != null) {
                              int guessNumber = int.parse(guessText);

                              print(randomNumber);
                              print(guessNumber);

                              triedText = 'You tried ' + guessNumber.toString();

                              if (guessNumber == randomNumber) {
                                feedbackText = 'You guessed right!';

                                Alert(
                                  context: context,
                                  type: AlertType.success,
                                  title: "You guessed right",
                                  desc: "It was " + randomNumber.toString(),
                                  buttons: [
                                    DialogButton(
                                      child: const Text(
                                        'Try Again',
                                        style: TextStyle(color: Colors.white, fontSize: 20),
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          randomNumber = random.nextInt(100) + 1;
                                          feedbackText = '';
                                          triedText = '';
                                          buttonText = 'Guess';
                                        });
                                        Navigator.pop(context);
                                      },
                                      width: 120,
                                    ),
                                    DialogButton(
                                        child: const Text(
                                          'OK',
                                          style: TextStyle(color: Colors.white, fontSize: 20),
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            buttonText = 'Reset';
                                          });
                                          Navigator.pop(context);
                                        },
                                        width: 120)
                                  ],
                                ).show();

                                buttonText = 'Reset';
                              } else if (guessNumber < randomNumber) {
                                feedbackText = 'Try higher';
                              } else
                                feedbackText = 'Try Lower';
                            }
                          });
                        },
                      )
                    ]),
              ),
            )
          ]),
        ));
  }
}
