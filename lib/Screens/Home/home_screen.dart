import 'package:farm_cod/Screens/Home/Widgets/bottom_navigation.dart';
import 'package:farm_cod/Screens/cart_screen.dart';
import 'package:farm_cod/Screens/profile_screen.dart';
import 'package:farm_cod/Screens/search_screen.dart';
import 'package:farm_cod/Screens/Home/Widgets/widget_home_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static ValueNotifier<int> selectedIndexNotifier = ValueNotifier(0);

  final _pages = const [
    WidgetHomeScreen(),
    SearchScreen(),
    CartScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[50],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('FarmCod'),
      ),
      bottomNavigationBar: const BottomNavigation(),
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: selectedIndexNotifier,
          builder: (BuildContext context, int updatedIndex, _) {
            return _pages[updatedIndex];
          },
        ),
      ),
    );
  }
}
