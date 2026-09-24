import 'package:flutter/material.dart';
import 'package:whatsapp_clone/features/landpage/view/widgets/landpage_body.dart';

class LandpageView extends StatelessWidget {
  const LandpageView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SafeArea(child: LandpageBody()));
  }
}
