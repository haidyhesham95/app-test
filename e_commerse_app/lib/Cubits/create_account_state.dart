part of 'create_account_cubit.dart';

@immutable
abstract class CreateAccountState {}

class CreateAccountInitial extends CreateAccountState {}

class CreateAccountSuccess extends CreateAccountState {}
class CreateAccountLoading extends CreateAccountState {}
class CreateAccountFailure extends CreateAccountState {
  String errorMessage;
  CreateAccountFailure({required this.errorMessage});
}
