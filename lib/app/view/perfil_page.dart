import 'package:flutter/material.dart';
import 'package:pet_adoption/app/widgets/appbar_widgets/perfil_app_bar_widget.dart';
import 'package:pet_adoption/app/widgets/body_widgets/perfil_widget/about_perfil_widget.dart';
import 'package:pet_adoption/app/widgets/body_widgets/perfil_widget/button_widget.dart';
import 'package:pet_adoption/app/widgets/body_widgets/perfil_widget/galery_photo_widget.dart';
import 'package:pet_adoption/app/widgets/body_widgets/perfil_widget/header_perfil_widget.dart';

class PerfilPage extends StatelessWidget {
  const PerfilPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PerfilAppBarWidget(),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Container(
              child: HeaderPerfil_widget(
                name: 'Sparky',
                raca: 'Golden Retriever',
                distancia: ' 2.5 Kms away',
                idade: ' 8 months old',
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  child: ListView(
                    padding: EdgeInsets.only(
                      left: 20,
                    ),
                    children: [
                      GaleryPhotoWidget(
                        galeriaFoto: "assets/pets/perfil1.png",
                      ),
                      GaleryPhotoWidget(
                        galeriaFoto: "assets/pets/perfil2.png",
                      ),
                      GaleryPhotoWidget(
                        galeriaFoto: "assets/pets/perfil3.png",
                      ),
                      GaleryPhotoWidget(
                        galeriaFoto: "assets/pets/perfil4.png",
                      ),
                    ],
                  ),
                ),
                Image.asset(
                  "assets/pets/perfil.png",
                  width: 250,
                  height: 380,
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                AboutWidget(),
                Container(
                  alignment: Alignment.bottomRight,
                  child: AdoptButton(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
