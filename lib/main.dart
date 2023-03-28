import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BOOK TRACKER',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const GetStartedPage(),
    );
  }
}

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: CircleAvatar(
        backgroundColor: Color.fromARGB(255, 255, 220, 253),
        child: Column(
          children: [
            Spacer(),
            Text(
              'Book Tracker',
              style: Theme.of(context).textTheme.displaySmall,
            ),
            Text(
              '"Read. Change. yourself"',
              style: TextStyle(fontSize: 29, color: Colors.black26),
            ),
            Spacer()
          ],
        ),
      ),
    );
  }
}
