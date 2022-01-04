import 'package:flutter/material.dart';
import 'package:untitled/menu.dart';

class White extends StatefulWidget {
  const White({Key? key}) : super(key: key);

  @override
  _WhiteState createState() => _WhiteState();
}

class _WhiteState extends State<White> {
  Future<void> navigateToMenu(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Menu()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Center(
              child: Text(
                "White Won",
                style: TextStyle(
                    fontSize: 150,
                    color: Colors.white
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
