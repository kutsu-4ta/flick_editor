import 'package:flutter/material.dart';
import 'edit_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // トップ画面
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        /// [explain]
        /// This is the theme of your application.
        /// Try running your application with "flutter run". You'll see the
        /// application has a blue toolbar. Then, without quitting the app, try
        /// changing the primarySwatch below to Colors.green and then invoke
        /// "hot reload" (press "r" in the console where you ran "flutter run",
        /// or simply save your changes to "hot reload" in a Flutter IDE).
        /// Notice that the counter didn't reset back to zero; the application
        /// is not restarted.

        // プライマリカラー
        primarySwatch: Colors.lightBlue,
      ),
      home: const MyHomePage(title: 'My App'),
    );
  }
}

/// [説明]
/// アプリのホーム画面クラス
/// 静的クラスで設定される
/// final でインスタンスを生成する感じか？
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

/// [説明] ホーム画面のStateクラス
class _MyHomePageState extends State<MyHomePage> {

  /// [説明] 編集画面へ遷移
  /// @param    void
  /// @return   void
  void _toEditPage() {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => EditPage('Edit')        // NOTE:アローで書いた方がかっこいい笑
      ),
    );
  }

  final items = List<String>.generate(20, (index) => "$index");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Library'),
      ),
      body: Container(
        width: double.infinity,
        // child:GridView.count(
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this produces 2 rows.
          // crossAxisCount: 2,
          // Generate 100 widgets that display their index in the List.
        //   children: List.generate(100, (index) {
        //     return Column(
        //       children: <Widget>[
        //         Expanded(
        //           child: Image.asset('images/hashibirokou.jpg'),
        //         ),
        //         Text('Item $index',
        //             style: Theme.of(context).textTheme.headline5),
        //       ],
        //     );
        //   }),
        // ),
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) => ListTile(      // HACK:やたらにアロー使うと見にくいか!?
              title: Text('${items[index]}'),
              // subtitle: Image.asset('images/hashibirokou.jpg'),
              onTap:_toEditPage,
          ),
        ),
      ),
    );
  }
}
