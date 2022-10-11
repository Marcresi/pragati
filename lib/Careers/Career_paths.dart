import 'package:flutter/material.dart';
import 'package:pragati/main.dart';
import 'package:go_router/go_router.dart';

class CareerPathPage extends StatefulWidget {
  const CareerPathPage({Key? key}) : super(key: key);

  @override
  State<CareerPathPage> createState() => _CareerPathPageState();
}

class _CareerPathPageState extends State<CareerPathPage> {
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
    );
  }
}
