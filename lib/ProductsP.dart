import 'package:flutter/material.dart';

import 'DetailsP.dart';
import 'ProfileP.dart';

extension AA on BuildContext {
  void openPage(Widget page) {
    final navigator = Navigator.of(this);
    navigator.push(MaterialPageRoute(builder: (context) => page));
  }
}

class ProductsP extends StatelessWidget {
  const ProductsP({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 44, 69, 55),
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 0,
              ),
              child: InkWell(
                onTap: () {
                  context.openPage(const ProfileP());
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
                        Icons.account_circle,
                        color: Color.fromARGB(255, 11, 10, 10),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 50),
              child: Text(
                'Products ',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 90,
              ),
              child: InkWell(
                onTap: () {
                  context.openPage(const DetailsP());
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
                        Icons.assignment_outlined,
                        color: Color.fromARGB(255, 11, 10, 10),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 45, top: 30),
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Row(
                    children: const [
                      PlantCard(
                        image:
                            "https://cdn.shopify.com/s/files/1/0150/6262/products/the-sill_monstera_variant_medium_hyde_cream_50145be1-5183-4692-80ed-a927d5625fc8.jpg?v=1673292428",
                        title: "Monstera Deliciosa",
                        price: "80 SAR",
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 40),
                        child: PlantCard(
                          image:
                              "https://cdn.shopify.com/s/files/1/0150/6262/products/the-sill_zz-plant_large_upcycled_stonewash.jpg?v=1660320334",
                          title: "     Zanzibar Gem     ",
                          price: "65 SAR",
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: Row(
                      children: const [
                        PlantCard(
                          image:
                              "https://cdn.shopify.com/s/files/1/0150/6262/products/the-sill_fiddle-leaf-fig_variant_small_grant_terracotta.jpg?v=1673292349",
                          title: "     Fiddle Leaf Fig    ",
                          price: "100SAR",
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 40),
                          child: PlantCard(
                            image:
                                "https://cdn.shopify.com/s/files/1/0150/6262/products/the-sill_majesty-palm_large_burbank_black_variant.jpg?v=1673502050",
                            title: "      Majesty Palm      ",
                            price: "130 SAR",
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: Row(
                      children: const [
                        PlantCard(
                          image:
                              "https://cdn.shopify.com/s/files/1/0150/6262/products/The-Sill_Cordyline-Maria_Large_Burbank_White_Variant.jpg?v=1673501868",
                          title: "    Cordyline Maria    ",
                          price: "95 SAR",
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 40),
                          child: PlantCard(
                            image:
                                "https://cdn.shopify.com/s/files/1/0150/6262/products/the-sill_red-anthurium_varient_small_bryant_mint.jpg?v=1653589431",
                            title: "    Red Anthurium    ",
                            price: "115 SAR",
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: Row(
                      children: const [
                        PlantCard(
                          image:
                              "https://cdn.shopify.com/s/files/1/0150/6262/products/the-sill_Faux-Olive-tree_burbank_white.jpg?v=1661446785",
                          title: "        Olive Tree         ",
                          price: "300 SAR",
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 40),
                          child: PlantCard(
                            image:
                                "https://cdn.shopify.com/s/files/1/0150/6262/products/The-Sill_HoyaCarnosa_Small_Hyde_Black_Variant.jpg?v=1671488268",
                            title: "    Hoya Carnosa     ",
                            price: "50 SAR",
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: Row(
                      children: const [
                        PlantCard(
                          image:
                              "https://cdn.shopify.com/s/files/1/0150/6262/products/The-Sill_Croton-Mammy_Medium_Upcycled_Blue_Variant.jpg?v=1673501223&width=400",
                          title: " Corkscrew Croton   ",
                          price: "75 SAR",
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 40),
                          child: PlantCard(
                            image:
                                "https://cdn.shopify.com/s/files/1/0150/6262/products/the-sill_marble-queen-pothos_variant_medium_grow-pot_none.jpg?v=1671554120",
                            title: "  Pothos Queen       ",
                            price: "85 SAR",
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: Row(
                      children: const [
                        PlantCard(
                          image:
                              "https://cdn.shopify.com/s/files/1/0150/6262/products/the-sill_bird-of-paradise_large_upcycled_stonewash.jpg?v=1660319820",
                          title: "   Bird of Paradise   ",
                          price: "150 SAR",
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 40),
                          child: PlantCard(
                            image:
                                "https://cdn.shopify.com/s/files/1/0150/6262/products/the-sill_bromeliad-vriesea-intenso-orange_small_bryant_mint.jpg?v=1664307040",
                            title: "Bromeliad Vriesea  ",
                            price: "80 SAR",
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: Row(
                      children: const [
                        PlantCard(
                          image:
                              "https://cdn.shopify.com/s/files/1/0150/6262/products/the-sill_calathea-rattlesnake_small_bryant_mint.jpg?v=1663279467",
                          title: "    Calathea Rattle   ",
                          price: "55 SAR",
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 40),
                          child: PlantCard(
                            image:
                                "https://cdn.shopify.com/s/files/1/0150/6262/products/the-sill_hoya-heart_variant_mini_hyde_mint.jpg?v=1672211943",
                            title: "       Hoya Heart      ",
                            price: "30 SAR",
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: Row(
                      children: const [
                        PlantCard(
                          image:
                              "https://cdn.shopify.com/s/files/1/0150/6262/products/the-sill_bird-of-paradise_large_upcycled_stonewash.jpg?v=1660319820",
                          title: "   Bird of Paradise   ",
                          price: "150 SAR",
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 40),
                          child: PlantCard(
                            image:
                                "https://cdn.shopify.com/s/files/1/0150/6262/products/the-sill_Faux-Olive-tree_burbank_white.jpg?v=1661446785",
                            title: "        Olive Tree         ",
                            price: "300 SAR",
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: Row(
                      children: const [
                        PlantCard(
                          image:
                              "https://cdn.shopify.com/s/files/1/0150/6262/products/the-sill_red-anthurium_varient_small_bryant_mint.jpg?v=1653589431",
                          title: "    Red Anthurium    ",
                          price: "115 SAR",
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 40),
                          child: PlantCard(
                            image:
                                "https://cdn.shopify.com/s/files/1/0150/6262/products/the-sill_zz-plant_large_upcycled_stonewash.jpg?v=1660320334",
                            title: "     Zanzibar Gem     ",
                            price: "65 SAR",
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: Row(
                      children: const [
                        PlantCard(
                          image:
                              "https://cdn.shopify.com/s/files/1/0150/6262/products/the-sill_bromeliad-vriesea-intenso-orange_small_bryant_mint.jpg?v=1664307040",
                          title: "Bromeliad Vriesea  ",
                          price: "80 SAR",
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 40),
                          child: PlantCard(
                            image:
                                "https://cdn.shopify.com/s/files/1/0150/6262/products/The-Sill_Croton-Mammy_Medium_Upcycled_Blue_Variant.jpg?v=1673501223&width=400",
                            title: " Corkscrew Croton   ",
                            price: "75 SAR",
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: Row(
                      children: const [
                        PlantCard(
                          image:
                              "https://cdn.shopify.com/s/files/1/0150/6262/products/the-sill_marble-queen-pothos_variant_medium_grow-pot_none.jpg?v=1671554120",
                          title: "  Pothos Queen       ",
                          price: "85 SAR",
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 40),
                          child: PlantCard(
                            image:
                                "https://cdn.shopify.com/s/files/1/0150/6262/products/the-sill_bird-of-paradise_large_upcycled_stonewash.jpg?v=1660319820",
                            title: "   Bird of Paradise   ",
                            price: "150 SAR",
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: Row(
                      children: const [
                        PlantCard(
                          image:
                              "https://cdn.shopify.com/s/files/1/0150/6262/products/the-sill_monstera_variant_medium_hyde_cream_50145be1-5183-4692-80ed-a927d5625fc8.jpg?v=1673292428",
                          title: "Monstera Deliciosa",
                          price: "80 SAR",
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 40),
                          child: PlantCard(
                            image:
                                "https://cdn.shopify.com/s/files/1/0150/6262/products/the-sill_majesty-palm_large_burbank_black_variant.jpg?v=1673502050",
                            title: "      Majesty Palm      ",
                            price: "130 SAR",
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: Row(
                      children: const [
                        PlantCard(
                          image:
                              "https://cdn.shopify.com/s/files/1/0150/6262/products/the-sill_bromeliad-vriesea-intenso-orange_small_bryant_mint.jpg?v=1664307040",
                          title: "Bromeliad Vriesea  ",
                          price: "80 SAR",
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 40),
                          child: PlantCard(
                            image:
                                "https://cdn.shopify.com/s/files/1/0150/6262/products/the-sill_calathea-rattlesnake_small_bryant_mint.jpg?v=1663279467",
                            title: "    Calathea Rattle   ",
                            price: "55 SAR",
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: Row(
                      children: const [
                        PlantCard(
                          image:
                              "https://cdn.shopify.com/s/files/1/0150/6262/products/the-sill_bird-of-paradise_large_upcycled_stonewash.jpg?v=1660319820",
                          title: "   Bird of Paradise   ",
                          price: "150 SAR",
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 40),
                          child: PlantCard(
                            image:
                                "https://cdn.shopify.com/s/files/1/0150/6262/products/the-sill_Faux-Olive-tree_burbank_white.jpg?v=1661446785",
                            title: "        Olive Tree         ",
                            price: "300 SAR",
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: Row(
                      children: const [
                        PlantCard(
                          image:
                              "https://cdn.shopify.com/s/files/1/0150/6262/products/the-sill_red-anthurium_varient_small_bryant_mint.jpg?v=1653589431",
                          title: "    Red Anthurium    ",
                          price: "115 SAR",
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 40),
                          child: PlantCard(
                            image:
                                "https://cdn.shopify.com/s/files/1/0150/6262/products/the-sill_marble-queen-pothos_variant_medium_grow-pot_none.jpg?v=1671554120",
                            title: "  Pothos Queen       ",
                            price: "85 SAR",
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PlantCard extends StatelessWidget {
  const PlantCard({
    Key? key,
    required this.image,
    required this.title,
    required this.price,
  }) : super(key: key);

  final String image, title, price;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
          width: 150,
          child: Column(
            children: <Widget>[
              Image.network(image),
              Container(
                padding: const EdgeInsets.all(21),
                decoration: const BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 60,
                    color: Colors.black,
                  )
                ]),
                child: Column(
                  children: <Widget>[
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 1),
                      child: Text(price),
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
