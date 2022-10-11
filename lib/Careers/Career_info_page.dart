import 'package:flutter/material.dart';
import 'package:pragati/main.dart';
import 'package:go_router/go_router.dart';

class CareerInfoPage extends StatefulWidget {
  const CareerInfoPage({Key? key}) : super(key: key);

  @override
  State<CareerInfoPage> createState() => _CareerInfoPageState();
}

class _CareerInfoPageState extends State<CareerInfoPage> {
  @override
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