import 'package:flutter/material.dart';
import 'package:pet_adoption/core/colors.dart';

class GaleryPhotoWidget extends StatelessWidget {
  final String galeriaFoto;
  const GaleryPhotoWidget({
    Key? key,
    required this.galeriaFoto,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
          border: Border.all(width: 2.0, color: AppColors.colorSubTitle),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.asset(
            galeriaFoto,
            width: 80,
            height: 80,
          ),
        ),
      ),
    );
  }
}
