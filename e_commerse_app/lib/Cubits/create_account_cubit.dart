import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'create_account_state.dart';

class CreateAccountCubit extends Cubit<CreateAccountState> {
  CreateAccountCubit() : super(CreateAccountInitial());

  Future <void> registerUser({required email ,required password}) async {
    emit(CreateAccountLoading());
    try {
      UserCredential user = await FirebaseAuth.instance
          .signInWithEmailAndPassword
        (email: email, password: password);
      emit(CreateAccountSuccess());

    }on FirebaseAuthException catch (ex) {
      if (ex.code == 'weak password') {
        emit (CreateAccountFailure(errorMessage:'weak password'));

      } else if (ex.code == 'email_already_in_use') {
        emit (CreateAccountFailure(errorMessage:'email_already_in_use'));
      }
    }catch (e) {
      emit(CreateAccountFailure(errorMessage: 'something went wrong'));

    }
  }
}
