import 'package:flutter/material.dart';
import 'package:game_hub/modules/text_styles.dart';
import 'package:get/get.dart';

class GameCard extends StatelessWidget {
  final String imgPath, gameName, pageRoute;
  final cardDimension = Get.size.width / 2;

  GameCard({
    required this.imgPath,
    required this.gameName,
    required this.pageRoute,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _cardBuilder(),
        _gameNameBuilder(),
      ],
    );
  }

  Widget _cardBuilder() {
    return GestureDetector(
      onTap: () {
        Get.toNamed(pageRoute);
      },
      child: Container(
        width: cardDimension,
        height: cardDimension,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.8),
              spreadRadius: -2,
              blurRadius: 12,
              offset: Offset(4, 4), // changes position of shadow
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(22),
          child: FittedBox(
            child: Image.asset(imgPath),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }

  Widget _gameNameBuilder() {
    return Positioned(
      bottom: 10,
      left: 10,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(22), bottomRight: Radius.circular(22)),
        child: Container(
          width: cardDimension - 20,
          height: 60,
          color: Colors.black.withOpacity(0.58),
          child: Center(
            child: Text(
              gameName.tr,
              style: TextStyles.gameNameStyle(cardDimension),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
