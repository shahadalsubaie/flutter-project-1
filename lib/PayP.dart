import 'package:flutter/material.dart';

class PayP extends StatelessWidget {
  const PayP({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 44, 69, 55),
        title: const Text(
          'Pay Page',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 400,
            width: double.infinity,
            decoration:
                BoxDecoration(color: const Color.fromARGB(255, 180, 183, 181), borderRadius: BorderRadius.circular(1)),
            child: const Icon(
              Icons.add_card,
              color: Color.fromARGB(255, 89, 104, 90),
              size: 150,
            ),
          ),
          Container(
            child: Column(
              children: const [
                Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 40),
                  child: Text(
                    'Card Information ',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    right: 25,
                    left: 25,
                  ),
                  child: TextField(
                      decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("Card Numvber"),
                  )),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    right: 25,
                    left: 25,
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: TextField(
                        decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text("MM/YY"),
                    )),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    right: 25,
                    left: 25,
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: TextField(
                        decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text("CVC"),
                    )),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
