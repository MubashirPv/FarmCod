import 'package:farm_cod/Models/product_model.dart';
import 'package:farm_cod/Screens/product_details.dart';
import 'package:flutter/material.dart';

class CategoryPlants extends StatefulWidget {
  const CategoryPlants({super.key});

  @override
  State<CategoryPlants> createState() => _CategoryPlantsState();
}

class _CategoryPlantsState extends State<CategoryPlants> {
  var plantsModel = [
    ProuctModel(
        id: 1,
        name: 'Aglaonema',
        image:
            'https://th.bing.com/th/id/OIP.VqKyUCgHnt4-XNWnHRV1JgHaHa?pid=ImgDet&rs=1',
        price: '499',
        discountprice: '599'),
    ProuctModel(
        id: 2,
        name: 'Oxalis Purple',
        image:
            'https://th.bing.com/th/id/OIP.djmo_93Z9q4MLn9WtjKUvwHaJW?pid=ImgDet&rs=1',
        price: '499',
        discountprice: '699'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Plants'),
      ),
      body: GridView.builder(
          itemCount: plantsModel.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 3 / 4,
              mainAxisSpacing: 5,
              crossAxisSpacing: 10),
          itemBuilder: (BuildContext context, int index) {
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
                          name: plantsModel[index].name,
                          image: plantsModel[index].image,
                          price: plantsModel[index].price,
                        );
                      }),
                    );
                  },
                  child: GridTile(
                    footer: GridTileBar(
                      backgroundColor: const Color.fromARGB(255, 233, 228, 228),
                      title: Column(
                        children: [
                          Text(
                            plantsModel[index].name,
                            style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                plantsModel[index].price,
                                style: const TextStyle(color: Colors.black),
                              ),
                              Text(
                                plantsModel[index].discountprice,
                                style: const TextStyle(color: Colors.black),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    child: Image.network(
                      plantsModel[index].image,
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
