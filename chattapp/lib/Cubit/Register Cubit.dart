import 'package:chattapp/Cubit/Login%20State.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'RegisterState.dart';

class RegisterCubit extends Cubit<RegisterState>{
  RegisterCubit():super(RegisterIntial());

  Future <void> registerUser({required email ,required password}) async {
    emit(RegisterLoading());
    try {
      UserCredential user = await FirebaseAuth.instance
          .signInWithEmailAndPassword
        (email: email, password: password);
      emit(RegisterSuccess());

    }on FirebaseAuthException catch (ex) {
      if (ex.code == 'weak password') {
        emit (RegisterFailure(errorMessage:'weak password'));

      } else if (ex.code == 'email_already_in_use') {
        emit (RegisterFailure(errorMessage:'email_already_in_use'));
      }
    }catch (e) {
      emit(RegisterFailure(errorMessage: 'something went wrong'));

    }
  }
}