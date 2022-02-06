import 'package:flutter/material.dart';
import 'package:pet_adoption/core/colors.dart';

class HeaderPerfil_widget extends StatelessWidget {
  final String name;
  final String raca;
  final String distancia;
  final String idade;

  const HeaderPerfil_widget({
    Key? key,
    required this.name,
    required this.raca,
    required this.distancia,
    required this.idade,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  raca,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Image.asset(
                      "assets/icons/placefill.png",
                      width: 16,
                      height: 16,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      raca,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: AppColors.colorSubTitle),
                    ),
                  ],
                ),

                //text
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Image.asset(
                  "assets/icons/sex.png",
                  width: 36,
                  height: 36,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  idade,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
