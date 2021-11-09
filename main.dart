import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
@override
Widget build(BuildContext context) {
return MaterialApp(
debugShowCheckedModeBanner: false,
title: 'Ideas list',
theme: ThemeData(
primarySwatch: Colors.lightGreen,
),
home: Home(),
);
}
}

class Home extends StatefulWidget {
@override
_HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
late final TextEditingController _textEditingController = TextEditingController();

final Set ideas = {""};

@override
Widget build(BuildContext context) {
return SafeArea(
child: Scaffold(
appBar: AppBar(
title: Text("Ideas list"),
centerTitle: true,
),
body: Center(
child: SizedBox(
width: 300,
child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: <Widget>[
TextField(
  controller: _textEditingController,
decoration: InputDecoration(
border: OutlineInputBorder(),
labelText: 'Ваша идея',
),
),
ElevatedButton(
onPressed: () {
  setState(() {
  ideas.add(_textEditingController.text);
  _textEditingController.clear();
  });
  },
  child: const Text("Занести идею в список!"),
  style: ElevatedButton.styleFrom(
  primary: Colors.lightGreen,
  padding: const EdgeInsets.all(20),
  ),
  ),
    for (var i in ideas)
    Padding(
    padding: const EdgeInsets.symmetric(),
  child: Text("$i")
  )
],
),
),
),
),
);
}
}








