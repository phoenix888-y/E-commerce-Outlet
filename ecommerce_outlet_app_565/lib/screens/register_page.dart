import 'package:ecommerce_outlet_app_565/constants.dart';
import 'package:ecommerce_outlet_app_565/widgets/custom_button.dart';
import 'package:ecommerce_outlet_app_565/widgets/custom_input.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  // Alert Dialog to display errors
  Future<void> _alertDialogBuilder() async {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
      return AlertDialog(
        title: Text("Error"),
        content: Container(
          child: Text("Random text for now"),
        ),
        actions: [
          FlatButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("Close Dialog"),
          )
        ],
      );
    }
  );
}

  // Default Form Loading State
  bool _registerForLoading = false;

  // Form Input Field Values
  String _registerEmail = "";
  String _registerPassword = "";

  // Focus Node for Input Fields
  FocusNode _passwordFocusNode;

  @override
  void initState() {
    _passwordFocusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    _passwordFocusNode.dispose();
    super.dispose();
  }

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
                    onChanged: (value) {
                      _registerEmail = value;
                    },
                    onSubmitted: (value) {
                      _passwordFocusNode.requestFocus();
                    },
                    textInputAction: TextInputAction.next,
                  ),
                  CustomInput(
                    hintText: "Password...",
                    onChanged: (value) {
                      _registerPassword = value;
                    },
                    focusNode: _passwordFocusNode,
                    isPasswordField: true,
                  ),
                  CustomButton(
                    text: "Create New Account",
                    onPressed: () {
                      // open the dialog
                      setState(() {
                        _registerForLoading = true;
                      });
                    },
                    isLoading: _registerForLoading,
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
