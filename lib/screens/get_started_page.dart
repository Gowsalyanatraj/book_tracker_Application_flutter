import 'package:book_tracker/screens/LoginPage/login_page.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: CircleAvatar(
        backgroundColor: HexColor('EAFFFF'),
        child: Column(
          children: [
           const Spacer(),
            Text(
              '📑Book Tracker📑',
              style: Theme.of(context).textTheme.displaySmall,
            ),
            const SizedBox(height: 15.0),
            const Text(
              '"Read. Change. yourself"',
              style: TextStyle(
                  fontSize: 29,
                  fontWeight: FontWeight.bold,
                  color: Colors.black26),
            ),
            const SizedBox(height: 50.0),
            TextButton.icon(
                style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: HexColor('01DDDD'),
                    textStyle:const TextStyle(fontSize: 18.1)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
                icon: const Icon(Icons.login_rounded),
                label:const Padding(
                  padding:  EdgeInsets.all(8.0),
                  child: Text('Sign in to get started'),
                )),
           const Spacer()
          ],
        ),
      ),
    );
  }
}
