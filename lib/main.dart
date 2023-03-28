import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Material App Bar'),
          ),
          body: Column(
            children: [
              TextButton(
                onPressed: onPressed(),
                onLongPress: onLongPressed,
                child: const Text("Text Button"),
              ),
              TextButton.icon(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.redAccent),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                ),
                onPressed: onPressed,
                icon: const Icon(Icons.add),
                label: const Text("Text Button Icon"),
              ),
              ElevatedButton(
                onPressed: onPressed,
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                child: const Text("Elevated Button"),
              ),
              ElevatedButton.icon(
                onPressed: onPressed,
                style: ButtonStyle(backgroundColor:
                    MaterialStateProperty.resolveWith((states) {
                  if (states.contains(MaterialState.pressed)) {
                    return Colors.teal;
                  } else {
                    return Colors.blueGrey;
                  }
                })),
                icon: const Icon(Icons.add),
                label: const Text("Elevated Button Icon"),
              ),
              OutlinedButton(
                onPressed: onPressed,
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Colors.red),
                  shape: const StadiumBorder(
                    side: BorderSide(
                      width: 5,
                    ),
                  ),
                ),
                child: const Text("Outlined Button"),
              ),
              OutlinedButton.icon(
                onPressed: onPressed,
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Colors.red),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                ),
                icon: const Icon(Icons.add),
                label: const Text("Outlined Button icon"),
              ),
            ],
          )),
    );
  }
  onPressed() {}
  onLongPressed() {
    debugPrint("Long Pressed");
  }
}
