import 'package:farm_cod/Screens/Categories/accessories_category.dart';
import 'package:farm_cod/Screens/Categories/plants_category.dart';
import 'package:farm_cod/Screens/Categories/pots_category.dart';
import 'package:farm_cod/Screens/Categories/seeds_category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class WidgetHomeScreen extends StatefulWidget {
  const WidgetHomeScreen({Key? key}) : super(key: key);

  @override
  State<WidgetHomeScreen> createState() => _WidgetHomeScreenState();
}

class _WidgetHomeScreenState extends State<WidgetHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('FarmCod'),
      ),
      body: ListView(
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
            padding: const EdgeInsets.all(8),
            height: 200,
            width: 200,
            child: ImageSlideshow(
              indicatorColor: Colors.blue,
              onPageChanged: (value) {
                debugPrint('Page changed: $value');
              },
              autoPlayInterval: 3000,
              isLoop: true,
              children: [
                Image.network(
                  "https://i.pinimg.com/736x/e4/ee/5b/e4ee5b191b64e73810a02f432a10c74f.jpg",
                  fit: BoxFit.cover,
                ),
                Image.network(
                  "https://c8.alamy.com/comp/DRR0B3/sunflowers-and-plant-pots-DRR0B3.jpg",
                  fit: BoxFit.cover,
                ),
                Image.network(
                  "https://image.isu.pub/160628093143-90f85599201af33ee04a8434c860205f/jpg/page_1.jpg",
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Shop by Category',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, color: Colors.green),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: ((context) {
                            return const CategoryPlants();
                          }),
                        ),
                      );
                    },
                    child: ClipOval(
                      child: Image.network(
                        "https://th.bing.com/th/id/OIP.OwTXk2H_46H302u0v3sYewHaHs?pid=ImgDet&rs=1",
                        height: 120,
                        width: 120,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'Plants',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: ((context) {
                            return const CategorySeeds();
                          }),
                        ),
                      );
                    },
                    child: ClipOval(
                      child: Image.network(
                        "https://th.bing.com/th/id/OIP.DgnMquUOzi8-pIwiUkh8mQHaFP?pid=ImgDet&rs=1",
                        height: 120,
                        width: 120,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'Seeds',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: ((context) {
                            return const CategoryPots();
                          }),
                        ),
                      );
                    },
                    child: ClipOval(
                      child: Image.network(
                        "https://th.bing.com/th/id/OIP.A-3dDAs_azY4loMZfSJatAHaHa?pid=ImgDet&rs=1",
                        height: 120,
                        width: 120,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'Pots',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: ((context) {
                            return const CategoryAccessories();
                          }),
                        ),
                      );
                    },
                    child: ClipOval(
                      child: Image.network(
                        "https://th.bing.com/th/id/OIP.3VroVm_zidB8o6otoNr8rgHaE8?pid=ImgDet&rs=1",
                        height: 120,
                        width: 120,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'Accessories',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
