import 'package:flutter/material.dart';
import 'package:game_hub/modules/constants.dart';
import 'package:game_hub/views/game_card.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _mainAppBar(),
      body: _homeBody(),
    );
  }

  AppBar _mainAppBar() {
    return AppBar(
      title: Center(
        child: Text(
          'Game Hub'.tr,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _homeBody() {
    return GridView.builder(
      addAutomaticKeepAlives: false,
      itemBuilder: (BuildContext context, int index) {
        return GameCard(
          imgPath: GAMES[index].image,
          gameName: GAMES[index].name,
          pageRoute: GAMES[index].pageRoute,
        );
      },
      itemCount: GAMES.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
    );
  }
}
