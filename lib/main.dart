import 'package:flutter/material.dart';
import 'package:untitled_chatting_game/homescreen.dart';

import 'Page/friendPage.dart';
import './Themes/theme1.dart';
//import './friendsList_design.dart';

void main() {
  runApp(
    const ChatGameApp(),
  );
}

class ChatGameApp extends StatelessWidget {
  const ChatGameApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Untitled Chat Game',
      theme: theme1(),
      darkTheme: ThemeData.dark(),
      home: Homescreen(),
    );
  }
}

//실행 안 되는 내용
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });

    final friendsTabKey = GlobalKey();
/*
    Widget _buildAndroidHomePage(BuildContext context) {
      //return friendsTabKey
    }
    */
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        backgroundColor: Colors.indigo,
        title: Text(widget.title),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.indigo,
        child: IconTheme(
          data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
          child: Row(
            children: <Widget>[
              IconButton(
                tooltip: 'Open Friends List',
                icon: const Icon(Icons.account_circle_outlined),
                onPressed: () {
                  FriendPage();
                },
              ),
              IconButton(
                tooltip: 'Open Chat List',
                icon: const Icon(Icons.chat_outlined),
                onPressed: () {},
              ),
              IconButton(
                tooltip: 'Open Downloaded Files',
                icon: const Icon(Icons.file_download_outlined),
                onPressed: () {},
              ),
              IconButton(
                tooltip: 'Open Chat List',
                icon: const Icon(Icons.menu),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Body widget',
            ),
            Text(
              'You\'ve clicked the button $_counter times',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.indigoAccent,
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
