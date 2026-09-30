import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:whatsapp_clone/core/functions/show_error_snack_bar.dart';
import 'package:whatsapp_clone/core/widgets/custom_button.dart';
import 'package:whatsapp_clone/features/auth/view/widgets/custom_auth_text_field.dart';
import 'package:whatsapp_clone/features/auth/viewmodel/auth_viewmodel.dart';

class LoginBody extends ConsumerStatefulWidget {
  const LoginBody({super.key});

  @override
  ConsumerState<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends ConsumerState<LoginBody> {
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
          CustomButton(
            onTap: () {
              if (_country == null) {
                showErrorToast(
                  context: context,
                  message: "Please choose country",
                );
                return;
              }
              if (_phoneController.text.trim().isEmpty) {
                showErrorToast(
                  context: context,
                  message: "Please enter phone number",
                );
                return;
              }
              String phoneNumber =
                  "+${_country!.phoneCode}${_phoneController.text.trim()}";
              ref
                  .read(authViewModelProvider.notifier)
                  .proceedPhoneAuth(phoneNumber: phoneNumber, context: context);
            },
            text: "Next",
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
