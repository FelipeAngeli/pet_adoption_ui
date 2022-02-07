import 'package:flutter/material.dart';
import 'package:pet_adoption/core/colors.dart';

class BoxCardWidget extends StatelessWidget {
  final String imagemAnimal;
  final String nomeAnimal;
  final String racaAnimal;
  final String idadeAnimal;
  final String distanciaAnimal;
  final String favoritoAnimal;
  const BoxCardWidget({
    Key? key,
    required this.imagemAnimal,
    required this.nomeAnimal,
    required this.racaAnimal,
    required this.idadeAnimal,
    required this.distanciaAnimal,
    required this.favoritoAnimal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 270,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    imagemAnimal,
                    width: 86,
                    height: 86,
                    fit: BoxFit.contain,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        nomeAnimal,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(racaAnimal),
                      Text(
                        idadeAnimal,
                        style: const TextStyle(
                          color: AppColors.colorSubTitle,
                        ),
                      ),
                      Row(
                        children: [
                          Image.asset(
                            "assets/icons/placefill.png",
                            width: 12,
                            height: 12,
                          ),
                          Text(
                            distanciaAnimal,
                            style: const TextStyle(
                              color: AppColors.colorSubTitle,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.topRight,
              child: Image.asset(
                favoritoAnimal,
                width: 20,
                height: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
