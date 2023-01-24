import 'package:whatsapp_ui/features/profile/commons/two_line_item.dart';
import 'package:whatsapp_ui/features/profile/styleguide/colors.dart';
import 'package:flutter/material.dart';

class ProfileInfoCard extends StatelessWidget {
  final firstText, secondText, hasImage, imagePath;

  const ProfileInfoCard({Key? key, this.firstText, this.secondText, this.hasImage = false, this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        color: Colors.black,
        elevation: 12,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: hasImage
            ? Center(
              child: Image.asset(
                  imagePath,
                  color: Colors.green,
                  width: 25,
                  height: 25,
                ),
            )
            : TwoLineItem(
                firstText: firstText,
                secondText: secondText,
              ),
      ),
    );
  }
}
