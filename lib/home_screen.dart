import 'package:flutter/material.dart';
import 'helper.dart';

class HomeScreen extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController numberController = TextEditingController();

  final FocusNode nameFocus = FocusNode();
  final FocusNode emailFocus = FocusNode();
  final FocusNode numberNode = FocusNode();

   HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CloseKeyBoard(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              SizedBox(height: 100),
              TextFormField(
                focusNode: nameFocus,
                controller: nameController,
                textInputAction: TextInputAction.next,
                onFieldSubmitted: (_) {
                  fieldFocusChange(context, nameFocus, emailFocus);
                },
                decoration: InputDecoration(
                  hintText: "Enter your text here",
                  labelText: "Name",
                  fillColor: Colors.yellow,
                  contentPadding:
                      EdgeInsets.only(left: 20, top: 10, bottom: 10),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 1.0),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.red, width: 2.0),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                ),
              ),
              SizedBox(height: 30),
              TextFormField(
                focusNode: emailFocus,
                controller: emailController,
                textInputAction: TextInputAction.next,
                onFieldSubmitted: (_) {
                  fieldFocusChange(context, emailFocus, numberNode);
                },
                decoration: InputDecoration(
                  hintText: "Enter your email here",
                  labelText: "Email",
                  fillColor: Colors.yellow,
                  contentPadding:
                  EdgeInsets.only(left: 20, top: 10, bottom: 10),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 1.0),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.red, width: 2.0),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                ),
              ),
              SizedBox(height: 30),
              TextFormField(
                focusNode: numberNode,
                controller: numberController,
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  hintText: "Enter your number here",
                  labelText: "number",
                  fillColor: Colors.yellow,
                  contentPadding:
                  EdgeInsets.only(left: 20, top: 10, bottom: 10),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 1.0),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.red, width: 2.0),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void fieldFocusChange(BuildContext context, FocusNode curentFocus, FocusNode nextFocus) {
    curentFocus.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }
}
