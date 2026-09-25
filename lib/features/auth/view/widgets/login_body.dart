import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/core/widgets/custom_button.dart';
import 'package:whatsapp_clone/features/auth/view/widgets/custom_auth_text_field.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  Country? _country;
  final TextEditingController _phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(height: 30),
          Text("Whatsapp will need to verify your phone number"),
          const SizedBox(height: 10),
          TextButton(
            onPressed: () async {
              showCountryPicker(
                context: context,
                onSelect: (Country country) {
                  setState(() {
                    _country = country;
                  });
                },
              );
            },
            child: Text("Choose the county"),
          ),
          Row(
            children: [
              _country == null
                  ? const Text("Country")
                  : Text("+${_country!.phoneCode}"),
              SizedBox(width: 10),
              Expanded(
                child: CustomAuthTextField(
                  hintText: "Phone number",
                  controller: _phoneController,
                ),
              ),
            ],
          ),
          Spacer(),
          CustomButton(onTap: () {}, text: "Next"),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
