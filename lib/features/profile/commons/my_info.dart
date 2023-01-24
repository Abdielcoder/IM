import 'package:whatsapp_ui/features/profile/commons/radial_progress.dart';
import 'package:whatsapp_ui/features/profile/commons/rounded_image.dart';
import 'package:whatsapp_ui/features/profile/styleguide/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RadialProgress(
            width: 4,
            progressColor: Colors.green,
            progressBackgroundColor: Colors.black87,
            goalCompleted: 1,
            child: RoundedImage(
              imagePath: "assets/images/abdiel.jpeg",
              size: Size.fromWidth(120.0),
            ),
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Abdiel Carrasco",
                style: whiteNameTextStyle,
              ),
              // Text(
              //   ", 24",
              //   style: whiteNameTextStyle,
              // ),
            ],
          ),
         SizedBox(height: 30,),
          // Row(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: <Widget>[
          //       Image.asset(
          //         "assets/icons/location_pin.png",
          //         width: 20.0,
          //         color: Colors.white,
          //       ),
          //       Text(
          //         "  34 kilometers",
          //         style: whiteSubHeadingTextStyle,
          //       )
          //     ],
          // ),
        ],
      ),
    );
  }
}
