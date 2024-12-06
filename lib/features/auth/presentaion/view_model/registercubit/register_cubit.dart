import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());

  final _auth = FirebaseAuth.instance;

  Future<void> registerUser(
      {required String email, required String password}) async {
    emit(RegisterLoding());
    try {
      final newuser = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      if (newuser != null) {
        emit(RegisterSuccess());
      }
    } on FirebaseAuthException catch (e) {
      // print(e);
      if (e.code == 'weak-password') {
        emit(RegisterFaluer(errMaseag: 'weak-password'));
      } else if (e.code == 'email-already-in-use') {
        emit(RegisterFaluer(errMaseag: ' email already exists'));
      }
    }
  }

  // void shoeSnacBar(BuildContext context, String message) {
  //   ScaffoldMessenger.of(context).showSnackBar(
  //     SnackBar(
  //       content: Text(message),
  //     ),
  //   );
  // }
}
