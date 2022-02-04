import 'package:flutter/material.dart';
import 'package:pet_adoption/core/colors.dart';

class BackGroundWidget extends StatelessWidget {
  final Widget child;
  const BackGroundWidget({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: AppColors.backgroundBody,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
    );
  }
}
