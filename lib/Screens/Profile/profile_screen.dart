import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  var names = [
    "My Orders",
    "Manage Address",
    "Reviews",
    "Help & feedback",
    "Contact us",
    "sell with us",
    "Share App"
  ];

  var themeicons = [
    Icons.shopping_cart,
    Icons.add_circle,
    Icons.rate_review,
    Icons.feedback,
    Icons.contact_support_sharp,
    Icons.sell_outlined,
    Icons.share
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
              children: [
                InkWell(onTap: () {}, child: const Text("Choose from gallery")),
                const Divider(
                  height: 10,
                  thickness: 1,
                ),
                InkWell(onTap: () {}, child: const Text("Take photo")),
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
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Account'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: ListView(
            children: [
              Center(
                child: Stack(
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
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Profile Name',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 15,
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
                    onTap: () {},
                  );
                },
                separatorBuilder: ((context, index) {
                  return const Divider(
                    thickness: 3,
                    height: 5,
                  );
                }),
                itemCount: 7,
              ),
              const Divider(
                thickness: 3,
                height: 5,
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 50),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Logout'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
