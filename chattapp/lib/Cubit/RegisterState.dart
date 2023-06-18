abstract class RegisterState{}

class RegisterIntial extends RegisterState{}
class RegisterLoading extends RegisterState{}
class RegisterSuccess extends RegisterState{}
class RegisterFailure extends RegisterState{
  String errorMessage;
  RegisterFailure({required this.errorMessage});
}
