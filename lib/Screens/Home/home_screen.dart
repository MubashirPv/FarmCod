import 'package:farm_cod/Screens/Home/Widgets/bottom_navigation.dart';
import 'package:farm_cod/Screens/cart_screen.dart';
import 'package:farm_cod/Screens/Profile/profile_screen.dart';
import 'package:farm_cod/Screens/search_screen.dart';
import 'package:farm_cod/Screens/Home/Widgets/widget_home_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
    HomeScreen({Key? key}) : super(key: key);
  static ValueNotifier<int> selectedIndexNotifier = ValueNotifier(0);

  final _pages =  [
    WidgetHomeScreen(),
    SearchScreen(),
    CartScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[50],
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
