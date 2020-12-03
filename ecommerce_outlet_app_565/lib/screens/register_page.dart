import 'package:ecommerce_outlet_app_565/constants.dart';
import 'package:ecommerce_outlet_app_565/widgets/custom_button.dart';
import 'package:ecommerce_outlet_app_565/widgets/custom_input.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.only(
                    top: 24.0
                ),
                child: Text(
                  "Create A New Account",
                  textAlign: TextAlign.center,
                  style: Constants.bold_heading,
                ),
              ),
              Column(
                children: [
                  CustomInput(
                    hintText: "Email...",
                  ),
                  CustomInput(
                      hintText: "Password..."
                  ),
                  CustomButton(
                    text: "Create New Account",
                    onPressed: () {
                      print("Clicked the login button");
                    },
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 16.0,
                ),
                child: CustomButton(
                  text: "Back To Login",
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  outlineButton: true,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
