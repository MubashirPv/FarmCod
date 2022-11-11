import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  var names = [
    "My Orders",
    "Saves Addresses",
    "Revies",
    "Coupons",
    "Settings",
  ];

  var themeicons = [
    Icons.shopping_cart,
    Icons.add_circle,
    Icons.rate_review,
    Icons.airplane_ticket,
    Icons.settings
  ];

  showAlertDialogue(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text(
              "Choose Image",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children:  [
                InkWell(
                  onTap: (){},
                  child: const Text("Choose from gallery")),
                const Divider(
                  height: 10,
                  thickness: 1,
                ),
                InkWell(
                  onTap: (){},
                  child: const Text("Take photo")),
              ],
            ),
            actions: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Close"))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.blue[100],
                    maxRadius: 80,
                  ),
                  Positioned(
                    bottom: 4,
                    right: 4,
                    child: IconButton(
                      onPressed: () {
                        showAlertDialogue(context);
                      },
                      icon: const Icon(Icons.edit),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Profile Name',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const Divider(
                thickness: 3,
                height: 5,
              ),
              ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(themeicons[index]),
                    title: Text(names[index]),
                    trailing: InkWell(
                      onTap: () {},
                      child: const Icon(Icons.arrow_forward),
                    ),
                  );
                },
                separatorBuilder: ((context, index) {
                  return const Divider(
                    thickness: 3,
                    height: 5,
                  );
                }),
                itemCount: 5,
              ),
              const Divider(
                thickness: 3,
                height: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
