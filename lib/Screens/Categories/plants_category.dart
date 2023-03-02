import 'package:farm_cod/Models/product.dart';
import 'package:farm_cod/Screens/product_details.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../Provider/product_data.dart';

class CategoryPlants extends StatefulWidget {
  const CategoryPlants({super.key});

  @override
  State<CategoryPlants> createState() => _CategoryPlantsState();
}

class _CategoryPlantsState extends State<CategoryPlants> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Plants'),
      ),
      body: Consumer<ProductData>(
        builder: (context, productData, child) {
          List<Product> products = productData.plants;
          return GridView.builder(
              itemCount: products.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 3 / 4,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 10),
              itemBuilder: (BuildContext context, int index) {
                final product = products[index];
                return Padding(
                  padding: const EdgeInsets.all(4),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (builder) {
                            return ProductDetails(
                                id: product.id,
                                name: product.name,
                                image: product.image,
                                price: product.price.toString());
                          }),
                        );
                      },
                      child: GridTile(
                        footer: GridTileBar(
                          backgroundColor:
                              const Color.fromARGB(255, 233, 228, 228),
                          title: Column(
                            children: [
                              Text(
                                product.name,
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    product.price.toString(),
                                    style: const TextStyle(color: Colors.black),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        child: Image.network(
                          product.image,
                        ),
                      ),
                    ),
                  ),
                );
              });
        },
      ),
    );
  }
}
