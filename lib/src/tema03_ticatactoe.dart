import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tuple/tuple.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void main() {
  runApp(TicTacToe());
}

class TicTacToe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<MaterialColor> tileColors = List<MaterialColor>(9);
  List<MaterialColor> playerToColor = [Colors.red, Colors.green];
  Map<MaterialColor, int> colorToPlayer = {Colors.red: 0, Colors.green: 1};
  int currentPlayer = 0;
  int nrColored = 0;
  bool isGameOver = false;

  void tappedTile(int index) {
    if (tileColors[index] != null || isGameOver) {
      return;
    }

    setState(() {
      tileColors[index] = playerToColor[currentPlayer];
      ++nrColored;

      print('Clicked $index');
      print('Nr Colored $nrColored');
      int winner = -1;

      Tuple2<int, List<int>> result = findResult();
      winner = result.item1;
      List<int> combination = result.item2;
      print('winner: $winner');
      if (winner == -1) {
        setState(() {
          if (nrColored == 9) {
            tiedGame();
            return;
          }
          tileColors[index] = playerToColor[currentPlayer];

          if (currentPlayer == 0)
            currentPlayer = 1;
          else
            currentPlayer = 0;
        });
      } else {
        {
          for (int i = 0; i < 9; ++i) {
            if (tileColors[i] == null) {
              continue;
            }
            if (combination.contains(i) == false) {
              tileColors[i] = null;
            }
          }
          isGameOver = true;
        }
      }
    });
  }

  void resetGame() {
    nrColored = 0;
    setState(() {
      for (int i = 0; i < 9; ++i) {
        tileColors[i] = null;
      }
      isGameOver = false;
    });
  }

  void tiedGame() {
    nrColored = 0;
    isGameOver = true;
    Alert(
      context: context,
      type: AlertType.info,
      title: 'Tie',
      desc: 'Tied game',
      buttons: [
        DialogButton(
            child: const Text(
              'OK',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            onPressed: () {
              setState(() {});
              Navigator.pop(context);
            },
            width: 120)
      ],
    ).show();
    return;
  }

  Tuple2<int, List<int>> findResult() {
    final List<List<int>> combinations = [
      [0, 1, 2],
      [3, 4, 5],
      [6, 7, 8],
      [0, 3, 6],
      [1, 4, 7],
      [2, 5, 8],
      [0, 4, 8],
      [2, 4, 6]
    ];

    for (final List<int> combination in combinations) {
      if (tileColors[combination[0]] == null ||
          tileColors[combination[1]] == null ||
          tileColors[combination[2]] == null) {
        continue;
      }

      final MaterialColor color = tileColors[combination[0]];
      final int player = colorToPlayer[color];

      if (color == tileColors[combination[1]] && color == tileColors[combination[2]]) {
        return Tuple2<int, List<int>>(player, combination);
      }
    }
    return Tuple2<int, List<int>>(-1, null);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.yellow,
            centerTitle: true,
            title: const Text(
              'tic-tac-toe',
              style: TextStyle(color: Colors.black),
            )),
        body: Column(
          children: <Widget>[
            GridView.builder(
                shrinkWrap: true,
                itemCount: 9,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, crossAxisSpacing: 0, mainAxisSpacing: 0),
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      tappedTile(index);
                    },
                    child: AnimatedContainer(
                      decoration: BoxDecoration(
                        border: Border.all(width: 0.4),
                        color: tileColors[index],
                      ),
                      duration: const Duration(milliseconds: 250),
                    ),
                  );
                }),
            const SizedBox(height: 16),
            Visibility(
              visible: isGameOver,
              child: RaisedButton(
                onPressed: () {
                  resetGame();
                },
                child: const Text('Play again!'),
              ),
            )
          ],
        ));
  }
}
