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
      body: Container(
        child: Column(
            children: [
              Image.asset('images/hashibirokou.jpg'),
            ],
        ),
        color: Colors.black87,
      ),
    );
  }
}