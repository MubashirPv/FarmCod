import 'package:flutter/material.dart';

class CategoryPots extends StatelessWidget {
  const CategoryPots({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pots'),
      ),
      body: const Center(
        child: Text('Pots'),
      ),
    );
  }
}