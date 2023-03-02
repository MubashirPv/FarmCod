import 'package:farm_cod/Models/product.dart';
import 'package:farm_cod/Screens/cart_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Provider/cart_data.dart';

class ProductDetails extends StatelessWidget {
  final int id;
  final String name;
  final String image;
  final String price;
  const ProductDetails({
    super.key,
    required this.id,
    required this.name,
    required this.image,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              Center(
                child: Image.network(
                  image,
                ),
              ),
              Text(
                name,
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    price,
                    style: const TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  Consumer<CartData>(
                    builder: (context, cart, child) => IconButton(
                      icon: const Icon(Icons.add_circle_outline),
                      onPressed: () {
                        cart.addToCart(Product(
                            id: id,
                            name: name,
                            image: image,
                            price: int.parse(price)));
                      },
                    ),
                  ),
                ],
              ),
              FloatingActionButton(
                child: const Icon(Icons.shopping_cart),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return const CartScreen();
                      },
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
