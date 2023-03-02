import 'package:farm_cod/Provider/product_data.dart';
import 'package:flutter/material.dart';

import '../Models/product.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();
  List<Product> _searchResult = [];
  final ProductData _productData = ProductData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: _searchController,
              onChanged: _onSearchTextChanged,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(vertical: 15.0),
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: const BorderSide(width: 0.8),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide(
                      width: 0.8, color: Theme.of(context).primaryColor),
                ),
                hintText: "Search Products Here",
                prefixIcon: const Icon(
                  Icons.search,
                  size: 30,
                ),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.clear),
                  onPressed: _clearSearch,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _searchResult.length,
              itemBuilder: (BuildContext context, int index) {
                Product product = _searchResult[index];
                return ListTile(
                  title: Text(product.name),
                  subtitle: Text('\$${product.price}'),
                  leading: Image.network(product.image),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void _onSearchTextChanged(String value) {
    setState(() {
      _searchResult = _productData.accessories
          .where((product) =>
              product.name.toLowerCase().contains(value.toLowerCase()))
          .toList();
      _searchResult.addAll(_productData.plants
          .where((product) =>
              product.name.toLowerCase().contains(value.toLowerCase()))
          .toList());
      _searchResult.addAll(_productData.pots
          .where((product) =>
              product.name.toLowerCase().contains(value.toLowerCase()))
          .toList());
      _searchResult.addAll(_productData.seeds
          .where((product) =>
              product.name.toLowerCase().contains(value.toLowerCase()))
          .toList());
    });
  }

  void _clearSearch() {
    setState(() {
      _searchController.clear();
      _searchResult.clear();
    });
  }
}