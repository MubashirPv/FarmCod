import 'package:flutter/material.dart';

import '../Models/product.dart';

class ProductData with ChangeNotifier {
  final List<Product> _accessories = [
    Product(
      id:1,
      name: 'Hand Digging Trowel',
      image:
          'https://i.pinimg.com/originals/a6/b3/5f/a6b35f530b4280a7167ee7c099a21ab1.jpg',
      price: 499,
    ),
    Product(
      id: 2,
      name: 'Garden Shears Bypass Pruner',
      image:
          'https://th.bing.com/th/id/OIP._jVh70mvRK-zSQY42g9DOgHaHA?pid=ImgDet&rs=1',
      price: 499,
    ),
  ];
  final List<Product> _plants = [
    Product(
      id: 3,
      name: 'Aglaonema',
      image:
          'https://th.bing.com/th/id/OIP.VqKyUCgHnt4-XNWnHRV1JgHaHa?pid=ImgDet&rs=1',
      price: 499,
    ),
    Product(
      id: 4,
      name: 'Oxalis Purple',
      image:
          'https://th.bing.com/th/id/OIP.djmo_93Z9q4MLn9WtjKUvwHaJW?pid=ImgDet&rs=1',
      price: 499,
    ),
  ];
  final List<Product> _pots = [
    Product(
      id: 5,
      name: 'Green Pot',
      image:
          'https://th.bing.com/th/id/OIP.6d582ZozZW2Up1iiIXvSwwHaHa?pid=ImgDet&rs=1',
      price: 499,
    ),
    Product(
      id: 6,
      name: 'Red Pot',
      image: 'https://5.imimg.com/data5/BO/KX/EH/SELLER-96942937/ye2a0676.jpg',
      price: 499,
    ),
  ];
  final List<Product> _seeds = [
    Product(
      id: 7,
      name: 'Jack Fruit Seed',
      image:
          'https://static.freshtohome.com/media/catalog/product/cache/45/image/18ae109e34f485bd0b0c075abec96b2e/j/a/jackfruit-seeds_1_.jpg',
      price: 499,
    ),
    Product(
      id: 8,
      name: 'Lemon Fruit Seeds',
      image:
          'https://th.bing.com/th/id/OIP.BxUUahpgSgAHbPg5j3ZE5QHaEr?pid=ImgDet&rs=1',
      price: 499,
    ),
  ];
  List<Product> get accessories => _accessories;
  List<Product> get plants => _plants;
  List<Product> get pots => _pots;
  List<Product> get seeds => _seeds;
}
