import 'package:flutter/material.dart';
import 'package:game_hub/utilites/constants.dart';
import 'package:game_hub/views/game_card.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Game Hub'.tr,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: GridView.builder(
        addAutomaticKeepAlives: false,
        itemBuilder: (BuildContext context, int index) {
          return GameCard(
            imgPath: GAMES[index].image,
            gameName: GAMES[index].name,
          );
        },
        itemCount: GAMES.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
      ),
    );
  }
}
