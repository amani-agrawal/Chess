import 'package:flutter/material.dart';
import 'package:untitled/menu.dart';

class Black extends StatefulWidget {
  const Black({Key? key}) : super(key: key);

  @override
  _BlackState createState() => _BlackState();
}

class _BlackState extends State<Black> {
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
                "Black Won",
                style: TextStyle(
                    fontSize: 150,
                    color: Colors.black
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
