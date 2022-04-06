import 'package:flutter/material.dart';

class CloseKeyBoard extends StatelessWidget {
  final Widget? child;
  CloseKeyBoard({Key? key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: child,
    );
  }
}
