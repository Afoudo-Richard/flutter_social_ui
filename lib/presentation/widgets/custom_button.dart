import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {Key? key,
      this.child,
      this.margin,
      this.padding,
      this.onTap,
      this.color = Colors.black})
      : super(key: key);

  final Widget? child;
  EdgeInsetsGeometry? margin;
  EdgeInsetsGeometry? padding;
  void Function()? onTap;
  Color? color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          alignment: Alignment.center,
          clipBehavior: Clip.hardEdge,
          margin: margin,
          padding: padding,
          decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: child,
        ),
      ),
    );
  }
}
