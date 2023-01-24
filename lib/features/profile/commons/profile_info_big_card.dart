import 'package:whatsapp_ui/features/profile/styleguide/text_style.dart';
import 'package:flutter/material.dart';

class ProfileInfoBigCard extends StatelessWidget {
  final String firstText, secondText ,image;
  final Widget icon;

  const ProfileInfoBigCard({Key? key, required this.firstText, required this.secondText, required this.image, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 16,
          top: 2,
          bottom: 14,
          right: 16,
        ),
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.dstATop),
                  image: AssetImage(image),)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Align(
                alignment: Alignment.topRight,
                child: icon,
              ),
              Text(firstText, style: titleStyle),
              Text(secondText, style: subTitleStyle),
            ],
          ),
        ),
      ),
    );
  }
}
