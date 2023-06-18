import 'package:storeapi/model/product_model.dart';
import '../helper/api.dart';
class Categories{
  Future <List<ProductModel>>getCategories({required String categoryName})async{


      List<dynamic>data =await Api().get(url:'https://fakestoreapi.com/products/category/$categoryName');
      List<ProductModel>productList=[];
      for(int i=0; i<data.length;i++){
        productList.add(ProductModel.fromJson(data[i])
        );
      }
      return productList;
    }
  }
