import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:untitled/menu.dart';
import 'package:flutter_chess_board/flutter_chess_board.dart';
import 'package:untitled/constants.dart' as chess;

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  Future<void> navigateToMenu(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Menu()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
              "Settings",
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
            ),
          ),
        )
      ),

      body: Container(
        color: Colors.brown,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                Center(
                  child: SizedBox(
                    width: 200,
                    height: 50,
                    child: Card(
                      elevation: 50,
                      color: Colors.black,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Theme: ",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: SizedBox(
                    width: 200,
                    height: 50,
                    child: Card(
                      elevation: 50,
                      color: Colors.green,
                      child: TextButton(
                        onPressed: () {chess.color = BoardColor.brown;},
                        child: Text(
                          "Brown",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white
                          ),
                        ),
                    ),
                  ),
                ),
                ),
                Center(
                  child: SizedBox(
                    width: 200,
                    height: 50,
                    child: Card(
                      elevation: 50,
                      color: Colors.green,
                      child: TextButton(
                        onPressed: () {chess.color = BoardColor.darkBrown;},
                        child: Text(
                          "Dark Brown",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: SizedBox(
                    width: 200,
                    height: 50,
                    child: Card(
                      elevation: 50,
                      color: Colors.green,
                      child: TextButton(
                        onPressed: () {chess.color = BoardColor.green;},
                        child: Text(
                          "Blue",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: SizedBox(
                    width: 200,
                    height: 50,
                    child: Card(
                      elevation: 50,
                      color: Colors.green,
                      child: TextButton(
                        onPressed: () {chess.color = BoardColor.orange;},
                        child: Text(
                          "Orange",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Center(
                  child: SizedBox(
                    width: 200,
                    height: 50,
                    child: Card(
                      elevation: 50,
                      color: Colors.black,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Board Orientation: ",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: SizedBox(
                    width: 200,
                    height: 50,
                    child: Card(
                      elevation: 50,
                      color: Colors.green,
                      child: TextButton(
                        onPressed: () {chess.side = PlayerColor.white;},
                        child: Text(
                          "White",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: SizedBox(
                    width: 200,
                    height: 50,
                    child: Card(
                      elevation: 50,
                      color: Colors.green,
                      child: TextButton(
                        onPressed: () {chess.side = PlayerColor.black;},
                        child: Text(
                          "Black",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Center(
              child: SizedBox(
                width: 200,
                height: 50,
                child: Card(
                  elevation: 50,
                  color: Colors.black,
                  child: TextButton(
                      onPressed: () {navigateToMenu(context);},
                      child: Center(
                        child: Text(
                          "Home",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white
                          ),
                        ),
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
