import 'package:flutter/material.dart';

class EditPage extends StatelessWidget {
  // イニシャライザ
  EditPage(this.post);
  String post;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(post),
        ),
        body: Stack(
          alignment: Alignment.bottomRight,
          children: <Widget>[
            SizedBox(
              width: 400.0,
              height: 400.0,
              child: Container(
                child:Image.asset('images/hashibirokou.jpg'),
                color: Colors.black,
              ),
            ),
            Positioned(
              left: 60.0,
              top: 60.0,
              width: 100.0,
              height: 100.0,
              child: Container(
                // color: Colors.green,
              ),
            ),
            Positioned(
              left: 120.0,
              top: 120.0,
              width: 100.0,
              height: 100.0,
              child: Container(
                // color: Colors.orange,
              ),
            ),
            Positioned(
              left: 100.0,
              top: 100.0,
              width: 300.0,
              height: 300.0,
              child: Container(
                child: Text(
                  'ハシビロコウ',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 30,
                    color: Theme.of(context).primaryColorLight,
                  ),
                ),
                // color: Colors.blue,
              ),
            ),
            Text(
              'Test',
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 40,
                color: Theme.of(context).primaryColorDark,
              ),
            )
          ],
        ));
  }
}