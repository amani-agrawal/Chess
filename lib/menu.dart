import 'package:flutter/material.dart';
import 'package:untitled/game.dart';
import 'package:untitled/settings.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  Future<void> navigateToGame(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Game()));
  }
  Future<void> navigateToSettings(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Settings()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "CHESS",
            style: TextStyle(
                fontSize: 30,
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: Container(
        color: Colors.brown,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: SizedBox(
                width: 300,
                height: 50,
                child: Card(
                  elevation: 50,
                  color: Colors.green,
                  child: TextButton(
                      onPressed: () {navigateToGame(context);},
                      child: Center(
                        child: Text(
                          "Play chess with a friend",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white
                          ),
                        ),
                      )),
                ),
              ),
            ),
            SizedBox(height: 100),
            Center(
              child: SizedBox(
                width: 200,
                height: 50,
                child: Card(
                  elevation: 50,
                  color: Colors.green,
                  child: TextButton(
                      onPressed: () {navigateToSettings(context);},
                      child: Center(
                        child: Text(
                          "Settings",
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
