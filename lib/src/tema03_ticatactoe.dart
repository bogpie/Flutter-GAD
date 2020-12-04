import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(TicTacToe());
}

class Tile extends StatefulWidget {
  Tile(this.index);

  int index;

  @override
  _TileState createState() => _TileState(index);
}

class _TileState extends State<Tile> {
  _TileState([this.index]);

  int index;

  int findWinner() {
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
      final List<MaterialColor> tileColors = StateVariables.tileColors;

      if (tileColors[combination[0]] == null ||
          tileColors[combination[1]] == null ||
          tileColors[combination[2]] == null) continue;

      final MaterialColor color = tileColors[combination[0]];
      final int player = StateVariables.colorToPlayer[color];

      if (color == tileColors[combination[1]] && color == tileColors[combination[2]]) {
        return player;
      }
    }
    return -1;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (StateVariables.tileColors[index] != null || _HomePageState.isGameOver) {
          return;
        }

        setState(() {


          final int currentPlayer = StateVariables.currentPlayer;
          StateVariables.tileColors[index] = StateVariables.playerToColor[currentPlayer];

          print('Clicked $index');
          int winner = -1;

          winner = findWinner();
          print('winner: $winner');
          if (winner == -1) {
            setState(() {
              StateVariables.tileColors[index] = StateVariables.playerToColor[currentPlayer];

              if (currentPlayer == 0)
                StateVariables.currentPlayer = 1;
              else
                StateVariables.currentPlayer = 0;
            });
          } else {
            final MaterialColor winnerColor = StateVariables.playerToColor[winner];
            {
              for (int i = 0; i < 9; ++i) {
                if (StateVariables.tileColors[i] == null) continue;
                if (StateVariables.tileColors[i] != winnerColor) {
                  StateVariables.tileColors[i] = null;
                }
              }
              _HomePageState.isGameOver = true;
            }
          }
        });
      },
      child: AnimatedContainer(
        decoration: BoxDecoration(
          border: Border.all(width: 0.4),
          color: StateVariables.tileColors[index],
        ),
        duration: const Duration(milliseconds: 250),
      ),
    );
  }
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

// ignore: avoid_classes_with_only_static_members
class StateVariables {
  static List<MaterialColor> tileColors = List<MaterialColor>(9);
  static List<MaterialColor> playerToColor = [Colors.red, Colors.green];
  static Map<MaterialColor, int> colorToPlayer = {Colors.red: 0, Colors.green: 1};
  static int currentPlayer = 0;
}

class _HomePageState extends State<HomePage> {
  static bool isGameOver = false;

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
              itemBuilder: (BuildContext context, int index) => Tile(index),
            ),
            Visibility(
              visible: _HomePageState.isGameOver,
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    for (int i = 0; i < 9; ++i) {
                      StateVariables.tileColors[i] = null;
                    }
                    _HomePageState.isGameOver = false;
                  });
                },
                child: const Text("text"),
              ),
            )
          ],
        ));
  }
}
