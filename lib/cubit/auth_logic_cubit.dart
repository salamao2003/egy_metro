import 'package:flutter_bloc/flutter_bloc.dart';

class AuthLogicCubit extends Cubit<AuthLogicState> {
  AuthLogicCubit() : super(AuthLogicInitial());

  void onLoginButtonPressed(String email, String password) {
    if (email.isEmpty || password.isEmpty) {
      emit(AuthLogicError("Fields cannot be empty"));
    } else {
      // Mock API call or business logic here
      emit(AuthLogicSuccess("Login Successful!"));
    }
  }

  void onSignUpButtonPressed(String firstName, String lastName, String email, String nationalId, String password, String confirmPassword) {
    if ([firstName, lastName, email, nationalId, password, confirmPassword].any((field) => field.isEmpty)) {
      emit(AuthLogicError("All fields are required"));
    } else if (password != confirmPassword) {
      emit(AuthLogicError("Passwords do not match"));
    } else {
      // Mock API call or business logic here
      emit(AuthLogicSuccess("Sign-Up Successful!"));
    }
  }
}

// States for Auth Logic
abstract class AuthLogicState {}

class AuthLogicInitial extends AuthLogicState {}

class AuthLogicSuccess extends AuthLogicState {
  final String message;
  AuthLogicSuccess(this.message);
}

class AuthLogicError extends AuthLogicState {
  final String error;
  AuthLogicError(this.error);
}
