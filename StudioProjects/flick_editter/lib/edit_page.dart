import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

// NOTE:編集画面,テキスト編集、画像配置実装する


// HACK:処理を別ファイルに分けたい

  class EditPage extends StatefulWidget {
    @override
    _EditPageState createState() => _EditPageState();
  }

class _EditPageState extends State<EditPage> {

  Offset posImage = Offset(20,20);
  Offset pos = Offset(50,50);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("編集画面"),
      ),
      body: Container(
      child: Stack(
        alignment: Alignment.bottomRight,
        // 画像
        children: <Widget>[
          Positioned(
            left: posImage.dx,
            top: posImage.dy,
            child: Draggable(
              feedback: Container(width: 100.0, height: 100.0, child:Image.asset('images/hashibirokou.jpg')),
              child:Container(width: 100.0, height: 100.0, child:Image.asset('images/hashibirokou.jpg')),
              childWhenDragging: Container(),
              onDraggableCanceled: (view, offset) {
                setState(() {
                  posImage = offset;
                });
              },
            ),
          ),
          // 四角
          Positioned(
            left: pos.dx,
            top: pos.dy,
            child: Draggable(
                feedback: Container(width: 100.0, height: 100.0, color: Colors.green[100]),
                child:Container(width: 100.0, height: 100.0, color: Colors.green),
              childWhenDragging: Container(),
              onDraggableCanceled: (view, offset) {
                  setState(() {
                    pos = offset;
                  });
                },
            ),
          ),
        ],
      ),
    ),
    );
  }
}
