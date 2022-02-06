import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pet_adoption/core/colors.dart';

class AboutWidget extends StatelessWidget {
  const AboutWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: const [
            Text(
              "About",
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              " The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. ",
              style: TextStyle(
                color: AppColors.colorSubTitle,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
