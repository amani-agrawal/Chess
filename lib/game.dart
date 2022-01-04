import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_chess_board/flutter_chess_board.dart';
import 'package:untitled/black.dart';
import 'package:untitled/draw.dart';
import 'package:untitled/menu.dart';
import 'package:untitled/settings.dart';
import 'package:untitled/white.dart';
import 'package:untitled/constants.dart' as chess;
class Game extends StatefulWidget {
  const Game({Key? key}) : super(key: key);

  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> {
  int cnt=0;
  ChessBoardController controller = ChessBoardController();
  Future<void> navigateToDraw(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => List()));
  }
  Future<void> navigateToWhite(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => White()));
  }
  Future<void> navigateToBlack(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Black()));
  }
  Future<void> navigateToMenu(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Menu()));
  }
  Future<void> navigateToSettings(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Settings()));
  }

  @override
  void initState(){
    cnt++;
      if(controller.isCheckMate()) {
        controller.clearBoard();
        if(cnt%2==0)
          navigateToBlack(context);
        else
          navigateToWhite(context);
      }
      else if(controller.isDraw() || controller.isStaleMate()
      || controller.isThreefoldRepetition()){
          controller.clearBoard();
          navigateToDraw(context);
      }
      else if(controller.isInCheck()) {
      }
  }
//Turns, Check
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
          child: ChessBoard(
            controller: controller,
            boardColor: chess.color,
            boardOrientation: chess.side,
            onMove: (){initState();},
          ),
            ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        ElevatedButton(onPressed: (){controller.undoMove();}, child: Text("Undo")),
                        Text(
                          "It is not applicable ",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            backgroundColor: Colors.deepOrange
                          ),
                        ),
                        Text(
                          "for pawns.",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              backgroundColor: Colors.deepOrange
                          ),
                        ),
                      ],
                    ),
                    ElevatedButton(onPressed: (){navigateToMenu(context);}, child: Text("Home")),
                    ElevatedButton(onPressed: (){controller.resetBoard();}, child: Text("Reset")),
                ]),

              SizedBox(height: 50)
            ],
          )
        ],
      )
    );
  }
}
