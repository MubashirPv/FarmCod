
import 'package:farm_cod/Screens/LoginAndSignup/login.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool? _value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(
            height: 100,
          ),
          const Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              "Create Account",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.green),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Center(
            child: Icon(
              Icons.account_circle,
              size: 80,
              color: Color.fromARGB(255, 146, 191, 147),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(15, 10, 15, 0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                hintText: "User name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(15, 10, 15, 0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.phone),
                hintText: "Phone",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(15, 10, 15, 0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                hintText: "Email",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(15, 10, 15, 0),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.password),
                suffixIcon: Icon(Icons.remove_red_eye_rounded),
                hintText: "Password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Checkbox(
                value: _value,
                onChanged: (value) {
                  setState(() {
                    _value = value;
                  });
                },
              ),
              const Text("I accept the terms of service and privacy policy.")
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text("Sign up"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Already have an account?"),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginScreen()),
                  );
                },
                child: const Text("Log in"),
              )
            ],
          )
        ],
      ),
    );
  }
}
