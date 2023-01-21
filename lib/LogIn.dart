import 'package:flutter/material.dart';

import 'ProductsP.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 44, 69, 55),
        title: const Text(
          'Login',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 40),
              child: Image(
                  image: NetworkImage(
                      'https://3dcollective.es/wp-content/uploads/2021/09/3DC_INTERIOR_PLANTS01_MINIATURA_PACK-510x510.jpg')),
            ),
            const Padding(
              padding: EdgeInsets.only(
                right: 25,
                left: 25,
              ),
              child: Padding(
                padding: EdgeInsets.only(top: 40),
                child: TextField(
                    decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("Email Address"),
                )),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 25, left: 25, top: 10),
              child: TextField(decoration: InputDecoration(border: OutlineInputBorder(), label: Text("Password"))),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                    minimumSize: const Size(380, 55),
                    backgroundColor: const Color.fromARGB(255, 44, 69, 55),
                    textStyle: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w800,
                    )),
                label: const Text('login'),
                icon: const Icon(Icons.arrow_forward_ios_rounded),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ProductsP()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
