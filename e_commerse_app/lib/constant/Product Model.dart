class ProductModel{
  String?name;
  String?price;
  String?location;
  String?imageUrl;
  String?description;

  ProductModel({required this.name,required this.price, required this.location,required this.imageUrl, required this.description});


  ProductModel.fromJson(Map<String,dynamic>?json){
    imageUrl=json!['imageUrl'];
    name=json['name'];
    description=json['description'];
    price=json['price'];
    location=json['location'];
  }
  Map<String,dynamic> toMap(){
    return{
      'imageUrl':imageUrl,
      'description':description,
      'name':name,
      'price':price,
      'location':location,
    };
  }
}
