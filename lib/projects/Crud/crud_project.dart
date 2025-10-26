import 'package:flutter/material.dart';
import 'package:mintapp/projects/Crud/product_controller.dart';

import 'Widgets/product_card.dart';

class CrudProject extends StatefulWidget {
  const CrudProject({super.key});

  @override
  State<CrudProject> createState() => _CrudProjectState();
}

class _CrudProjectState extends State<CrudProject> {
  ProductController productController = ProductController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchData();
  }
  Future fetchData() async {
    await productController.fachProduct();
    if (mounted) setState(() {});
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Crud Project'),
        backgroundColor: Colors.red,
        centerTitle: false,
      ),
      body: Expanded(
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            childAspectRatio: 0.8,
          ),
          itemCount: productController.products.length,
          itemBuilder: (context, index) {
            var product = productController.products[index];
            return product_card(products: product,);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}

