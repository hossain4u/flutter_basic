import 'package:flutter/material.dart';

import '../Model/product_model.dart';

class product_card extends StatelessWidget {
  final Data products;
  const product_card({
    super.key,
    required this.products
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        child: Column(
          children: [
            SizedBox(
              height: 130,
              child: Image.network(products.img.toString()),
            ),
            Text(
              products.productName.toString(),
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            Text(
              "Price : \$${products.unitPrice} | QTY : ${products.qty}",
              style: TextStyle(fontSize: 15, color: Colors.grey),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.edit, color: Colors.orange),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.delete, color: Colors.red),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}