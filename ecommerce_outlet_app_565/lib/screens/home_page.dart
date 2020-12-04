import 'package:ecommerce_outlet_app_565/constants.dart';
import 'package:ecommerce_outlet_app_565/widgets/buttom_tabs.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column (
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Center(
              child: Text(
                  "Homepage"
              ),
            ),
          ),
          BottomTabs(),
        ],
      ),
    );
  }
}
