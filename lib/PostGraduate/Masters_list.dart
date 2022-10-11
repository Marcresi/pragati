import 'package:flutter/material.dart';
import 'package:pragati/main.dart';
import 'package:go_router/go_router.dart';

class MastersListPage extends StatefulWidget {
  const MastersListPage({Key? key}) : super(key: key);

  @override
  State<MastersListPage> createState() => _MastersListPageState();
}

class _MastersListPageState extends State<MastersListPage> {
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
              onPressed: () => context.go('/MastersInfoPage'),
              child: const Text('College Information'),
            ),
          ],
        ),
      ),
    );
  }
}