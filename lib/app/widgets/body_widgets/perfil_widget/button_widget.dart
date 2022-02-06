import 'package:flutter/material.dart';
import 'package:pet_adoption/core/colors.dart';

class AdoptButton extends StatelessWidget {
  const AdoptButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      width: 200,
      child: ElevatedButton.icon(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            primary: AppColors.iconBackground,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(35)),
            )),
        icon: Image.asset(
          "assets/icons/paw.png",
          width: 18,
          height: 18,
        ),
        label: Text(
          "ADOPT",
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
