import 'package:flutter/material.dart';

class ItemsWidget extends StatelessWidget {
  const ItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 0.68,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        for (int i = 1; i < 8; i++)
        Container(
          padding: const EdgeInsets.only(left: 15, right: 10, top: 10),
          margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text(
                      '-50%',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  const Icon(
                    Icons.favorite_border,
                    color: Colors.green
                  )
                ],
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  margin: const EdgeInsets.all(10),
                  child: Image.asset('assets/images/$i.png', height: 120, width: 120),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                alignment: Alignment.centerLeft,
                child: const Text("Product Title",
                    style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 26, 149, 50),
                        fontWeight: FontWeight.bold)),
              ),
              Container (
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Write description of the product",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
              ),
              ),
              Padding(padding: const EdgeInsets.symmetric(vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    '\$ 100',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color.fromARGB(255, 50, 120, 38),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.shopping_cart_checkout,
                    color: Color.fromARGB(255, 50, 120, 38),
                  )
                ],))
            ],
          ),
        )
      ],
    );
  }
}
