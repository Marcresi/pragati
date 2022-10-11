import 'package:flutter/material.dart';
import 'package:pragati/main.dart';
import 'package:go_router/go_router.dart';

class CollegeInfoPage extends StatefulWidget {
  const CollegeInfoPage({Key? key}) : super(key: key);

  @override
  State<CollegeInfoPage> createState() => _CollegeInfoPageState();
}

class _CollegeInfoPageState extends State<CollegeInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(MyApp.title),
        leading: ElevatedButton(
          onPressed: () => context.go('/CollegeListPage'),
          child: const Icon(Icons.arrow_back),
        ),
      ),
    );
  }
}