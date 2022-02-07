import 'package:flutter/material.dart';
import 'package:pet_adoption/core/colors.dart';

class OptionMenu extends StatelessWidget {
  final String titlemenu;
  final String iconmenu;
  final Color backgroundCard;
  final Color fonteColor;

  const OptionMenu({
    Key? key,
    this.titlemenu = "",
    required this.iconmenu,
    this.backgroundCard = AppColors.branco,
    this.fonteColor = AppColors.colorTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundCard,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          const SizedBox(width: 15),
          SizedBox(
            height: 23,
            width: 25,
            child: Image.asset(
              iconmenu,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            titlemenu,
            style: TextStyle(
              fontSize: 14,
              color: fonteColor,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(width: 10),
        ],
      ),
    );
  }
}
