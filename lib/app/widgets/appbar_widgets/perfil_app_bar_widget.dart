import 'package:flutter/material.dart';
import 'package:pet_adoption/core/colors.dart';

class PerfilAppBarWidget extends PreferredSize {
  // ignore: use_key_in_widget_constructors
  PerfilAppBarWidget({Key? key})
      : super(
          preferredSize: const Size.fromHeight(100),
          child: AppBar(
            toolbarHeight: 100,
            automaticallyImplyLeading: false,
            title: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Builder(
                    builder: (context) => IconButton(
                      icon: Image.asset(
                        "assets/icons/arrowleft.png",
                        height: 26,
                        width: 26,
                      ),
                      onPressed: () => Scaffold.of(context).openDrawer(),
                    ),
                  ),
                  Container(
                    width: 42,
                    height: 42,
                    decoration: BoxDecoration(
                      color: AppColors.iconBackgroundopacity,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Builder(
                      builder: (context) => IconButton(
                        icon: Image.asset(
                          "assets/icons/heartfill.png",
                          height: 24,
                          width: 24,
                        ),
                        onPressed: () => Scaffold.of(context).openDrawer(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            backgroundColor: Colors.white,
            elevation: 0,
            titleSpacing: 0,
          ),
        );
}
