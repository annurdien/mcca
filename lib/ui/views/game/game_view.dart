import 'package:flutter/material.dart';
import 'package:lexiedu/ui/views/game/game_model.dart';
import 'package:stacked/stacked.dart';

class GameView extends ViewModelBuilderWidget<GameViewModel> {
  @override
  Widget builder(BuildContext context, GameViewModel viewModel, Widget? child) {
    final _height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text("Game"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: _height * 0.90,
        ),
        child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Ayo Main',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                Container(
                  height: _height * 0.70,
                  child: GridView.count(
                    primary: false,
                    padding: const EdgeInsets.all(2),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 2,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Color(0xFF409D78),
                        ),
                        child: Image.asset("assets/membaca2.png"),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Color(0xFF409D78),
                        ),
                        child: Image.asset("assets/mengeja.png"),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Color(0xFF409D78),
                        ),
                        child: Image.asset("assets/mengucap.png"),
                      )
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }

  @override
  GameViewModel viewModelBuilder(BuildContext context) {
    return GameViewModel();
  }
}
