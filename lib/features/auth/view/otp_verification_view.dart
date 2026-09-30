import 'package:flutter/material.dart';
import 'package:whatsapp_clone/features/auth/view/widgets/build_app_bar.dart';
import 'package:whatsapp_clone/features/auth/view/widgets/otp_verification_body.dart';

class OtpVerificationView extends StatelessWidget {
  const OtpVerificationView({super.key, required this.verificationId});
  static const routeName = '/otp-verification';
  final String verificationId;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: 'Enter OTP verification code'),
      body: OtpVerificationBody(verificationId: verificationId),
    );
  }
}
