import 'package:farm_cod/Screens/product_details.dart';
import 'package:flutter/material.dart';
import '../../Models/product_model.dart';

class CategoryPots extends StatefulWidget {
  const CategoryPots({super.key});

  @override
  State<CategoryPots> createState() => _CategoryPotsState();
}

class _CategoryPotsState extends State<CategoryPots> {
  var potsModel = [
    ProuctModel(
        id: 1,
        name: 'Green Pot',
        image:
            'https://th.bing.com/th/id/OIP.6d582ZozZW2Up1iiIXvSwwHaHa?pid=ImgDet&rs=1',
        price: '499',
        discountprice: '599'),
    ProuctModel(
        id: 2,
        name: 'Red Pot',
        image:
            'https://5.imimg.com/data5/BO/KX/EH/SELLER-96942937/ye2a0676.jpg',
        price: '499',
        discountprice: '699'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pots'),
      ),
      body: GridView.builder(
          itemCount: potsModel.length,
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
                          name: potsModel[index].name,
                          image: potsModel[index].image,
                          price: potsModel[index].price,
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
                            potsModel[index].name,
                            style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                potsModel[index].price,
                                style: const TextStyle(color: Colors.black),
                              ),
                              Text(
                                potsModel[index].discountprice,
                                style: const TextStyle(color: Colors.black),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    child: Image.network(
                      potsModel[index].image,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
