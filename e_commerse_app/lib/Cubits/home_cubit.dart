import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../constant/Product Model.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  List<ProductModel>Product=[];
  CollectionReference Productref = FirebaseFirestore.instance.collection('Product');
  HomeCubit() : super(HomeInitial());
  static HomeCubit get(context)=>BlocProvider.of(context);
  void getProduct()async{
    await Productref.get().then((value){
      value.docs.forEach((element){
        element.reference.get().then((value){
          Product.add(ProductModel.fromJson(value.data()as Map<String,dynamic>?));
          emit(GetData());
        });
      });

    });
  }
}
