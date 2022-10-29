import 'package:flutter/material.dart';


class BackgroundImage extends StatelessWidget {
  final Widget child;
  final EdgeInsets? padding;
  const BackgroundImage({required this.child,this.padding});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/bg.jpeg'),fit: BoxFit.fill)
      ),
      child: child,
    );
  }
}
