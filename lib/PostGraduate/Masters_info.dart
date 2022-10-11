import 'package:flutter/material.dart';
import 'package:pragati/main.dart';
import 'package:go_router/go_router.dart';

class MastersInfoPage extends StatefulWidget {
  const MastersInfoPage({Key? key}) : super(key: key);

  @override
  State<MastersInfoPage> createState() => _MastersInfoPageState();
}

class _MastersInfoPageState extends State<MastersInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(MyApp.title),
        leading: ElevatedButton(
          onPressed: () => context.go('/MastersListPage'),
          child: const Icon(Icons.arrow_back),
        ),
      ),
      
    );
  }
}