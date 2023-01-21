import 'package:flutter/material.dart';

class ProfileP extends StatefulWidget {
  const ProfileP({super.key});

  @override
  State<ProfileP> createState() => _ProfilePState();
}

class _ProfilePState extends State<ProfileP> {
  final TextEditingController ChEmail = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 44, 69, 55),
        title: const Text(
          'Profile',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 150,
            width: double.infinity,
            child: Icon(
              Icons.account_circle,
              color: Color.fromARGB(255, 89, 104, 90),
              size: 150,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 170),
            child: Row(
              children: const [
                Text(
                  'wish list ',
                  style: TextStyle(fontSize: 20),
                ),
                Icon(
                  Icons.favorite,
                  color: Color.fromARGB(255, 178, 97, 121),
                  size: 30,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Image.network(
              'https://cdn.shopify.com/s/files/1/0150/6262/products/the-sill_Faux-Olive-tree_burbank_white.jpg?v=1661446785',
              width: 80,
              height: 80,
              fit: BoxFit.fitWidth,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 2, left: 8),
            child: Column(
              children: const [
                Text(
                  "Olive Tree",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                Text(
                  " 250 SAR",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 20),
            child: Container(
              width: 400,
              alignment: Alignment.topLeft,
              child: Column(
                children: [
                  const Text(
                    'Name: shahad',
                    style: TextStyle(fontSize: 23),
                  ),
                  Text(
                    'Email:${ChEmail.text}',
                    style: const TextStyle(fontSize: 23),
                  )
                ],
              ),
            ),
          ),
          TextField(
              autocorrect: true,
              autofocus: true,
              textAlign: TextAlign.left,
              cursorColor: Colors.blueGrey,
              keyboardType: TextInputType.text,
              maxLines: 1,
              textInputAction: TextInputAction.send,
              controller: ChEmail,
              onSubmitted: (value) {
                setState(() {
                  ChEmail.text = value;
                });
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Change Email "),
              ))
        ],
      ),
    );
  }
}
