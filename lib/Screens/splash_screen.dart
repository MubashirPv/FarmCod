import 'package:farm_cod/Screens/Home/home_screen.dart';
import 'package:farm_cod/Screens/login_signupscreen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    gotoHome();
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child:Text('FarmCod',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 40,
        ),)
      )
    );
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
  Future<void> gotoHome() async {
    await Future.delayed(
      Duration(seconds: 3),
    );
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return LoginSignupScreen();
        },
      ),
    );
  }
}
