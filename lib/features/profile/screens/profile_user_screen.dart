import 'package:whatsapp_ui/features/profile/commons/my_info.dart';
import 'package:whatsapp_ui/features/profile/commons/opaque_image.dart';
import 'package:whatsapp_ui/features/profile/commons/profile_info_big_card.dart';
import 'package:whatsapp_ui/features/profile/commons/profile_info_card.dart';
import 'package:whatsapp_ui/features/profile/pages/super_likes_me_page.dart';
import 'package:whatsapp_ui/features/profile/styleguide/colors.dart';
import 'package:whatsapp_ui/features/profile/styleguide/text_style.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Expanded(
                flex: 4,
                child: Stack(
                  children: <Widget>[
                    OpaqueImage(
                      imageUrl: "assets/images/abdiel.jpeg",
                    ),
                    SafeArea(
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "My Profile",
                                textAlign: TextAlign.left,
                                style: headingTextStyle,
                              ),
                            ),
                            MyInfo(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  padding: const EdgeInsets.only(top: 50),
                  color: Colors.white,
                  child: Table(
                    children: [
                      TableRow(
                        children: [
                          ProfileInfoBigCard(
                            image: 'assets/noavatar.jpeg',
                            firstText: "13",
                            secondText: "Contacs",
                            icon: Icon(
                              Icons.contact_mail_outlined,
                              size: 32,
                              color: Colors.blue,
                            ),
                          ),
                          ProfileInfoBigCard(
                            image: 'assets/images/crypto.jpeg',
                            firstText: "21",
                            secondText: "Transactions",
                            icon: Icon(
                              Icons.monetization_on,
                              size: 32,
                              color: blueColor,
                            ),
                          ),
                        ],
                      ),
                      TableRow(

                        children: [
                          Container(
                            child: ProfileInfoBigCard(
                              image: 'assets/images/bitcoin.jpeg',
                              firstText: "0.12192",
                              secondText: "Bitcoin",
                              icon: Image.asset(
                                "assets/icons/checklist.png",
                                width: 32,
                                color: blueColor,
                              ),
                            ),
                          ),
                          ProfileInfoBigCard(
                            image: 'assets/images/ethereum.jpeg',
                            firstText: "45.32423",
                            secondText: "Ethereum",
                            icon: Icon(
                              Icons.refresh,
                              size: 32,
                              color: blueColor,
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          ProfileInfoBigCard(
                            image: 'assets/images/solana.jpeg',
                            firstText: "54.23223",
                            secondText: "Solana",
                            icon: Icon(
                              Icons.remove_red_eye,
                              size: 32,
                              color: blueColor,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => SuperLikesMePage(),
                                ),
                              );
                            },
                            child: ProfileInfoBigCard(
                              image: 'assets/images/xrp.jpeg',
                              firstText: "142.22",
                              secondText: "Ripple",
                              icon: Icon(
                                Icons.favorite,
                                size: 32,
                                color: blueColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: screenHeight * (4 / 9) - 80 / 2,
            left: 16,
            right: 16,
            child: Container(
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  ProfileInfoCard(firstText: "56%", secondText: "App Profits"),
                  SizedBox(
                    width: 10,
                  ),
                  ProfileInfoCard(
                    hasImage: true,
                    imagePath: "assets/icons/pulse.png",
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  ProfileInfoCard(firstText: "152", secondText: "Coins App"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}