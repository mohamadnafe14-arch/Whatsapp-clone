import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:whatsapp_clone/core/functions/show_error_snack_bar.dart';
import 'package:whatsapp_clone/features/auth/model/repo/auth_repo.dart';
part 'auth_viewmodel.g.dart';

@riverpod
class AuthViewModel extends _$AuthViewModel {
  late AuthRepo _authRepo;

  @override
  Future<void> build() async {
    _authRepo = ref.read(authRepoProvider);
  }

  Future<void> proceedPhoneAuth({
    required String phoneNumber,
    required BuildContext context,
  }) async {
    try {
      await _authRepo.proceedPhoneAuth(
        phoneNumber: phoneNumber,
        context: context,
      );
    } catch (e) {
      // ignore: use_build_context_synchronously
      showErrorToast(context: context, message: e.toString());
    }
  }
}
