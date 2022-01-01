import 'package:flutter/material.dart';
import 'package:shuticons/shuticons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shuticons Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Coolicons Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<IconModel> imaterialIcons = [
    IconModel(icon: Shuticon.Figma, name: "Figma icon"),
    IconModel(icon: Shuticon.Linkedin, name: "LinkedIn icon"),
    IconModel(icon: Shuticon.Apple, name: "Apple icon"),
    IconModel(icon: Shuticon.Facebook, name: "Facebook icon"),
    IconModel(icon: Shuticon.Google, name: "Google icon"),
    IconModel(icon: Shuticon.Youtube, name: "YouTube icon")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(imaterialIcons[index].icon, size: 50.0),
                const SizedBox(height: 30.0),
                Text(imaterialIcons[index].name, textAlign: TextAlign.center),
              ],
            ),
          );
        },
        itemCount: imaterialIcons.length,
      ),
    );
  }
}

class IconModel {
  IconData icon;
  String name;

  IconModel({required this.icon, required this.name});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['icon'] = icon;
    data['name'] = name;
    return data;
  }
}
