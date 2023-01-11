import 'package:flutter/material.dart';

class MyPath extends StatelessWidget{

  final innerColor;
  final outerColor;
  final child;

  const MyPath({Key? key, this.innerColor, this.outerColor, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(6),
        child: Container(
          padding: const EdgeInsets.all(12),
          color: outerColor,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              color: innerColor,
              child: Center(
                child: child,
              ),
            ),
          ),
        ),
      ),
    );
  }


}