import 'package:flutter/material.dart';
import 'package:pet_adoption/core/colors.dart';

class AppBarWidget extends PreferredSize {
  // ignore: use_key_in_widget_constructors
  AppBarWidget({Key? key})
      : super(
          preferredSize: const Size.fromHeight(100),
          child: AppBar(
            toolbarHeight: 100,
            automaticallyImplyLeading: false,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Builder(
                  builder: (context) => IconButton(
                    icon: Image.asset(
                      "assets/icons/menu1.png",
                      height: 26,
                      width: 26,
                    ),
                    onPressed: () => Scaffold.of(context).openDrawer(),
                  ),
                ),
                Column(
                  children: const [
                    Text(
                      'Location',
                      style: TextStyle(
                        color: AppColors.colorSubTitle,
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      'Cameron St., Boston',
                      style: TextStyle(
                        color: AppColors.colorTitle,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 42,
                  width: 42,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(
                      'assets/person/avatar.jpg',
                    ),
                    radius: 100,
                  ),
                ),
              ],
            ),
            backgroundColor: Colors.white,
            elevation: 0,
            titleSpacing: 0,
          ),
        );
}
