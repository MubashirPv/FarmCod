import 'package:flutter/material.dart';

class CategorySeeds extends StatelessWidget {
  const CategorySeeds({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Seeds'),
      ),
      body: const Center(
        child: Text('Seeds'),
      ),
    );
  }
}