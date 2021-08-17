import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Great Places',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        accentColor: Colors.amber,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  GlobalKey<FormState> key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Form(
        key: key,
        child: Center(
            child: TextFormField(
          decoration: const InputDecoration(
            labelText: 'Description',
            hintText: 'Describe your product',
          ),
          minLines: 1,
          maxLines: 3,
          textInputAction: TextInputAction.newline,
          keyboardType: TextInputType.multiline,
        )),
      ),
    );
  }
}
