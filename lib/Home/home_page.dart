import 'package:flutter/material.dart';
import 'package:pragati/main.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const  Text(MyApp.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () => context.go('/UpdatePage'),
              child: const Text('Important Updates'),
            ),
            ElevatedButton(
              onPressed: () => context.go('/CollegeListPage'),
              child: const Text('College For You'),
            ),
            ElevatedButton(
              onPressed: () => context.go('/JobListPage'),
              child: const Text('Jobs For You'),
            ),
          ],
        ),
      ),
    );
  }
}
