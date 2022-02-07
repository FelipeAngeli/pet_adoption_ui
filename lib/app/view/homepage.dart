import 'package:flutter/material.dart';
import 'package:pet_adoption/app/widgets/appbar_widgets/app_bar_widgets.dart';
import 'package:pet_adoption/app/widgets/body_widgets/homepage_widget/background_widget.dart';
import 'package:pet_adoption/app/widgets/body_widgets/homepage_widget/box_card_widget.dart';
import 'package:pet_adoption/app/widgets/body_widgets/homepage_widget/option_menu.dart';
import 'package:pet_adoption/core/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: BackGroundWidget(
          child: Column(
        children: [
          const SizedBox(height: 30),
          SizedBox(
            height: 50,
            child: ListView(
              padding: const EdgeInsets.only(left: 30),
              scrollDirection: Axis.horizontal,
              children: const [
                OptionMenu(iconmenu: "assets/icons/settings.png"),
                SizedBox(width: 15),
                OptionMenu(
                  iconmenu: 'assets/icons/dog.png',
                  titlemenu: 'Dogs',
                  backgroundCard: AppColors.iconBackground,
                  fonteColor: AppColors.branco,
                ),
                SizedBox(width: 15),
                OptionMenu(
                  iconmenu: 'assets/icons/cat.png',
                  titlemenu: ' Cats',
                ),
                SizedBox(width: 15),
                OptionMenu(
                  iconmenu: 'assets/icons/bird.png',
                  titlemenu: 'Birds',
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              children: const [
                BoxCardWidget(
                  imagemAnimal: 'assets/pets/pet1.png',
                  nomeAnimal: 'Spark',
                  racaAnimal: 'Golde Retriver',
                  idadeAnimal: 'Female, 8 months old',
                  distanciaAnimal: ' 2.5 Km away',
                  favoritoAnimal: 'assets/icons/heartfill.png',
                ),
                SizedBox(height: 15),
                BoxCardWidget(
                  imagemAnimal: 'assets/pets/pet2.png',
                  nomeAnimal: 'Charlie',
                  racaAnimal: 'Boston Terrier',
                  idadeAnimal: 'Male, 1.5 years old',
                  distanciaAnimal: ' 2.6 Kms away',
                  favoritoAnimal: 'assets/icons/heartgrey.png',
                ),
                SizedBox(height: 15),
                BoxCardWidget(
                  imagemAnimal: 'assets/pets/pet3.png',
                  nomeAnimal: 'Max',
                  racaAnimal: 'Siberian Husky',
                  idadeAnimal: 'Male, 1 year old',
                  distanciaAnimal: ' 2.9 Kms away',
                  favoritoAnimal: 'assets/icons/heartgrey.png',
                ),
                SizedBox(height: 15),
                BoxCardWidget(
                  imagemAnimal: 'assets/pets/pet4.png',
                  nomeAnimal: 'Daisy',
                  racaAnimal: 'Maltese',
                  idadeAnimal: 'Female, 7 months old',
                  distanciaAnimal: ' 2.9 Kms away',
                  favoritoAnimal: 'assets/icons/heartgrey.png',
                ),
                SizedBox(height: 15),
                BoxCardWidget(
                  imagemAnimal: 'assets/pets/pet5.png',
                  nomeAnimal: 'Zoe',
                  racaAnimal: 'Jack Russel Terrier',
                  idadeAnimal: 'Female, 1.2 year old ',
                  distanciaAnimal: ' 2.3 Kms away',
                  favoritoAnimal: 'assets/icons/heartgrey.png',
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
