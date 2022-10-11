import 'package:flutter/material.dart';
import 'package:pragati/main.dart';
import 'package:go_router/go_router.dart';

class CollegeListPage extends StatefulWidget {
  const CollegeListPage({Key? key}) : super(key: key);

  @override
  State<CollegeListPage> createState() => _CollegeListPageState();
}

class _CollegeListPageState extends State<CollegeListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(MyApp.title),
        leading: ElevatedButton(
          onPressed: () => context.go('/'),
          child: const Icon(Icons.arrow_back),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () => context.go('/CollegeInfoPage'),
              child: const Text('College Information'),
            ),
          ],
        ),
      ),
    );
  }
}