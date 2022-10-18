import 'package:flutter/material.dart';

class CategoryAccessories extends StatelessWidget {
  const CategoryAccessories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Accessories'),
      ),
      body: const Center(
        child: Text('Accessories'),
      ),
    );
  }
}