
import '../helper/api.dart';
class AllCategory {
  Future <List<dynamic>> getAllCategory() async {

      List<dynamic>data = await Api().get(url:'https://fakestoreapi.com/products/categories');
      return data;
    }

  }