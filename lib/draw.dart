import 'package:flutter/material.dart';
import 'package:untitled/menu.dart';

class List extends StatefulWidget {
  const List({Key? key}) : super(key: key);

  @override
  _ListState createState() => _ListState();
}

class _ListState extends State<List> {
  Future<void> navigateToMenu(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Menu()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Center(
            child: Text(
              "Game Draw!",
              style: TextStyle(
                fontSize: 150,
                color: Colors.red
              ),
            ),
          ),
          SizedBox(height: 100),
          ElevatedButton(onPressed: (){navigateToMenu(context);}, child: Text("Home"))
        ],
      )
        );
  }
}
