import 'package:flutter/material.dart';
import 'package:pragati/main.dart';
import 'package:go_router/go_router.dart';

class UserPage extends StatelessWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: const Text(MyApp.title),
        ),
        body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          
          children: <Widget>[
            ElevatedButton(
              onPressed: () => context.go('/UpdatePage'),
              child: const Text('Continue'),
            ),
          ],
        ),
      ),
      );
  }
}