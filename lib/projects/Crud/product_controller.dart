import 'dart:convert';
import 'Model/product_model.dart';
import 'Utils/url.dart';
import 'package:http/http.dart' as http;

class ProductController {
  List <Data> products =[];

  Future fachProduct() async{

    final response = await http.get(Uri.parse(Url.readProduct));
    print(response.statusCode);
    print('product count : ${response.body}');

    if(response.statusCode == 200){
      final data = jsonDecode(response.body);
      productModel model = productModel.fromJson(data);
      products = model.data ?? [];

    }
  }

}