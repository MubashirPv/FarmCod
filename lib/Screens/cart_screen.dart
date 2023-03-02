import 'package:farm_cod/Provider/cart_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Models/product.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
      ),
      body: Consumer<CartData>(
        builder: (context, cart, child) {
          return ListView.builder(
            itemCount: cart.cartItems.length,
            itemBuilder: (context, index) {
              Product product = cart.cartItems[index];
              return ListTile(
                leading: Image.network(product.image),
                title: Text(product.name),
                subtitle: Text('\$${product.price}'),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      onPressed: () {
                        cart.removeFromCart(index);
                      },
                      icon: const Icon(Icons.remove_circle_outline),
                    ),
                    Text(
                      product.quantity.toString(),
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        cart.addToCart(product);
                      },
                      icon: const Icon(Icons.add_circle_outline),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
      bottomNavigationBar: Consumer<CartData>(
        builder: (context, cart, child) {
          // calculate the total cost of all products in the cart
          int totalCost = cart.totalCost;

          return Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 8.0,
              horizontal: 16.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total: \$${totalCost.toString()}',
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // handle checkout action here
                  },
                  child: const Text('Checkout'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
