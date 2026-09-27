import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:whatsapp_clone/features/auth/view/otp_verification_view.dart';
part 'auth_repo.g.dart';
@riverpod
AuthRepo authRepo(Ref ref) => AuthRepo(
  firebaseAuth: FirebaseAuth.instance,
  firestore: FirebaseFirestore.instance,
);

class AuthRepo {
  final FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firestore;

  AuthRepo({required this._firebaseAuth, required this._firestore});
  Future<void> proceedPhoneAuth({
    required String phoneNumber,
    required BuildContext context,
  }) async {
    await _firebaseAuth.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      verificationCompleted: (PhoneAuthCredential credential) {},
      verificationFailed: (FirebaseAuthException e) {},
      codeSent: (String verificationId, int? resendToken) {
        context.push(OtpVerificationView.routeName, extra: verificationId);
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }
}
