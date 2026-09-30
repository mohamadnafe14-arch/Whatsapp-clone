import 'package:flutter/material.dart';
import 'package:whatsapp_clone/core/theme/colors.dart';

AppBar buildAppBar({required String title}) {
  return AppBar(
        title: Text(title),
        centerTitle: true,
        backgroundColor: backgroundColor,
        elevation: 0,
      );
}