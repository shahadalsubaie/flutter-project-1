import 'package:flutter/material.dart';

import 'PayP.dart';

extension KK on BuildContext {
  void openPage(Widget page) {
    final navigator = Navigator.of(this);
    navigator.push(MaterialPageRoute(builder: (context) => page));
  }
}

class CartP extends StatelessWidget {
  const CartP({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 44, 69, 55),
          title: Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 120),
                child: Text(
                  'Cart',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 120,
                ),
                child: InkWell(
                  onTap: () {
                    context.openPage(const PayP());
                  },
                  child: Stack(
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.only(right: 5),
                        decoration: const BoxDecoration(
                          color: Colors.white24,
                          shape: BoxShape.circle,
                        ),
                        padding: const EdgeInsets.all(11.0),
                        child: const Icon(
                          Icons.add_card,
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
        body: SafeArea(
            child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 30),
              child: Text(
                'Shopping Cart',
                style: TextStyle(fontSize: 50, fontFamily: 'Raleway'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60, left: 18, right: 18, bottom: 18),
              child: Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 87, 106, 98), borderRadius: BorderRadius.circular(12)),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Image.network(
                        'https://cdn.shopify.com/s/files/1/0150/6262/products/the-sill_Faux-Olive-tree_burbank_white.jpg?v=1661446785',
                        width: 80,
                        height: 80,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 90),
                      child: Column(
                        children: const [
                          Text(
                            "Product: Olive Tree",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                          Text(
                            " Price: 250 SAR",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                          Text(
                            " Quantity:1",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18),
              child: Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 87, 106, 98), borderRadius: BorderRadius.circular(12)),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Image.network(
                        'https://cdn.shopify.com/s/files/1/0150/6262/products/the-sill_majesty-palm_large_column_black.jpg?v=1673502049',
                        width: 80,
                        height: 80,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 90),
                      child: Column(
                        children: const [
                          Text(
                            "Product: Majesty Palm",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                          Text(
                            " Price: 65 SAR",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                          Text(
                            " Quantity:1",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18),
              child: Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 87, 106, 98), borderRadius: BorderRadius.circular(12)),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Image.network(
                        'https://cdn.shopify.com/s/files/1/0150/6262/products/the-sill_bird-of-paradise_large_upcycled_stonewash.jpg?v=1660319820',
                        width: 80,
                        height: 80,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 90),
                      child: Column(
                        children: const [
                          Text(
                            "Product: Bird of Paradise",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                          Text(
                            " Price: 120 SAR",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                          Text(
                            " Quantity:1",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50, bottom: 30),
              child: Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(bottom: 30),
                    child: Text(
                      'Base Price.....................................435 SAR',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 30),
                    child: Text(
                      'Taxes..............................................150 SAR',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Text(
                    'Total..............................................558 SAR',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
          ],
        )));
  }
}
