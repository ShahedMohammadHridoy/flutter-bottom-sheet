import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        "Click here",
      )),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0))),
                context: context,
                builder: (context) {
                  return Wrap(
                    children: const [
                      ListTile(
                        leading: Icon(Icons.share),
                        title: Text("Share"),
                      ),
                      ListTile(
                        leading: Icon(Icons.copy),
                        title: Text("Copy Link"),
                      ),
                      ListTile(
                        leading: Icon(Icons.edit),
                        title: Text("Edit"),
                      ),
                    ],
                  );
                });
          },
          child: const Text('Bottom Sheet'),
        ),
      ),
    );
  }
}
