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
  int player = 0;
  List<MaterialColor> colors = [Colors.red, Colors.green];
  MaterialColor color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('Clicked $index');
        setState(() {
          color = colors[player];
          if (player == 0)
            player = 1;
          else
            player = 0;
        });
      },
      child: AnimatedContainer(
        decoration: BoxDecoration(
          border: Border.all(width: 0.4),
          color: color,
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

class _HomePageState extends State<HomePage> {


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
        body: GridView.builder(
          itemCount: 9,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, crossAxisSpacing: 0, mainAxisSpacing: 0),

          itemBuilder: (BuildContext context, int index) => Tile(index),

        ));
  }
}
