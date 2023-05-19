import 'package:http/http.dart' as http;
import 'package:newapp/modelclass.dart';

class Http {
  static Future<List<ProductsModel>> fetchProducts() async {
    var response =
        await http.get(Uri.parse("https://fakestoreapi.com/products"));
    if (response.statusCode == 200) {
      var data = response.body;
      return productsModelFromJson(data);
    } else {
      var data = response.body;
      return productsModelFromJson(data);
    }
  }
}
