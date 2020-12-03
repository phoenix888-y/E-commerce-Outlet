import 'package:ecommerce_outlet_app_565/constants.dart';
import 'package:ecommerce_outlet_app_565/screens/register_page.dart';
import 'package:ecommerce_outlet_app_565/widgets/custom_button.dart';
import 'package:ecommerce_outlet_app_565/widgets/custom_input.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                  child: Text("Welcome User, \nLogin to your Account",
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
                      text: "Login",
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
                    text: "Create New Account",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterPage()
                          ),
                      );
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
