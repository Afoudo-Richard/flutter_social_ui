import 'package:flutter/material.dart';

class ItemContainer extends StatelessWidget {
  ItemContainer({
    Key? key,
    this.child,
    this.height,
    this.width,
    this.margin,
    this.padding,
  }) : super(key: key);

  final Widget? child;
  final double? height;
  final double? width;
  EdgeInsetsGeometry? margin;
  EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
          clipBehavior: Clip.hardEdge,
          margin: margin,
          padding: padding,
          height: height,
          width: width,
          decoration: const BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: child),
    );
  }
}
