import 'package:flutter/material.dart';
import 'package:whatsapp_clone/features/auth/view/widgets/build_app_bar.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  static const String routeName = '/login';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:buildAppBar(), 
    );
  }
}
