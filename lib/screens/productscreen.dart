import 'package:ayurseva/screens/widgets/categorieswidget.dart';
import 'package:ayurseva/screens/widgets/itemswidget.dart';

import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 74, 140, 111),
        title: const Text('Products', style: TextStyle(color: Colors.black),),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart, color: Colors.black,),
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 15),
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 214, 228, 222),
            ),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 163, 211, 190),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(children: [
                    Container(
                      margin: const EdgeInsets.only(left: 5),
                      height: 50,
                      width: 300,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Search here',
                        )
                      ),
                    ),
                    const Spacer(),
                    const Icon(Icons.search, color: Colors.grey,
                    size: 27,),
                  ]),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(left: 20, top: 15),
                  child: const Text(
                    'Categories',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const CategoriesWidget(),
                Container (alignment: Alignment.centerLeft,
                margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                child: const Text("Best Selling", style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),)),
                const ItemsWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
