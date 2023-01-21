import 'package:flutter/material.dart';

import 'LogIn.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://r1.ilikewallpaper.net/iphone-12-mini-wallpapers/download-105476/shallow-photography-of-leaves.jpg'))),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 330, left: 30),
              child: Text('Make your days feeling goods with beautiful plant',
                  style: TextStyle(color: Colors.white, fontSize: 50, fontWeight: FontWeight.w800)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      foregroundColor: const Color.fromARGB(255, 1, 1, 1),
                      minimumSize: const Size(380, 70),
                      backgroundColor: const Color.fromARGB(255, 247, 247, 247),
                      textStyle: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w800,
                      )),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const LogIn()),
                    );
                  },
                  child: const Text('Start')),
            ),
          ],
        ),
      ),
    );
  }
}
