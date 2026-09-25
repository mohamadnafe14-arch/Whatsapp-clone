import 'package:flutter/material.dart';
import 'package:whatsapp_clone/core/theme/colors.dart';

AppBar buildAppBar(){
  return AppBar(
        title: Text('Enter your phone number'),
        centerTitle: true,
        backgroundColor: backgroundColor,
        elevation: 0,
      );
}