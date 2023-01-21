import 'package:flutter/material.dart';

import 'CartP.dart';

class DetailsP extends StatelessWidget {
  const DetailsP({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 44, 69, 55),
        title: Row(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 80),
              child: Text(
                'Product Details',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 60,
              ),
              child: InkWell(
                onTap: () {
                  context.openPage(const CartP());
                },
                child: Stack(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(right: 1),
                      decoration: const BoxDecoration(
                        color: Colors.white24,
                        shape: BoxShape.circle,
                      ),
                      padding: const EdgeInsets.all(11),
                      child: const Icon(
                        Icons.shopping_cart,
                        color: Color.fromARGB(255, 11, 10, 10),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
                height: 650, child: Image(image: NetworkImage('https://www.enjpg.com/img/2020/plant-aesthetic-1.jpg'))),
            Column(
              children: [
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(top: 8, bottom: 15, right: 1, left: 12),
                      child: Text(
                        'Bird of Paradise',
                        style: TextStyle(fontSize: 26, fontWeight: FontWeight.w400),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 100),
                      child: Text(
                        '120 SAR',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 12, right: 20),
                  child: Text(
                    'With its broad vibrant green leaves, the Bird of Paradise brings a touch of the tropics to any room. It is named after its unique flowers which resemble brightly colored birds in flight. ',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
