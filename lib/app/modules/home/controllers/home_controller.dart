import 'dart:math';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  FirebaseAuth fa = FirebaseAuth.instance;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  Future<bool> registerWithEmailAndPassword(
    String email,
    String password,
  ) async {
    try {
      UserCredential userCredential = await fa.createUserWithEmailAndPassword(
        email:
            'pinedamg+ftest' + Random().nextInt(100).toString() + '@gmail.com',
        password: 'SuperSecretPassword!',
      );
      return true;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
      return false;
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<void> loginWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential userCredential = await fa.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (userCredential != null && userCredential.user != null) {
        /**
         * @TODO Add feature to create user if not exists
         */

      }
    } catch (e) {
      print(e);
    }
  }
}
