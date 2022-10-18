import 'package:flutter/material.dart';

class CategoryPlants extends StatelessWidget {
  const CategoryPlants({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Plants'),
      ),
      body: const Center(
        child: Text('Plants'),
      ),
    );
  }
}
