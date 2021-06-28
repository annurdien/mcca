import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:lexiedu_app/ui/views/home/home_view_model.dart';
import 'package:stacked/stacked.dart';

class HomeView extends ViewModelBuilderWidget<HomeViewModel> {
  @override
  Widget builder(BuildContext context, HomeViewModel viewModel, Widget? child) {
    return Scaffold(
      body: getViewForIndex(viewModel.currentIndex),
      bottomNavigationBar: CurvedNavigationBar(
        items: [
          Icon(Icons.home, size: 30),
          Icon(Icons.videogame_asset, size: 30),
          Icon(Icons.camera, size: 30),
          Icon(Icons.chat_bubble_outline, size: 30),
          Icon(Icons.settings, size: 30),
        ],
        onTap: viewModel.setIndex,
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(BuildContext context) {
    return HomeViewModel();
  }

  Widget getViewForIndex(int index) {
    switch (index) {
      case 0:
        return Scaffold(
          body: Center(child: Text('Home Menu')),
        );
      case 1:
        return Scaffold(
          body: Center(child: Text('Game Menu')),
        );
      case 2:
        return Scaffold(
          body: Center(child: Text('Camera Menu')),
        );
      case 3:
        return Scaffold(
          body: Center(child: Text('Chat Menu')),
        );
      case 4:
        return Scaffold(
          body: Center(child: Text('Settings Menu')),
        );
    }
    return Scaffold(
      body: Text('No Such Route'),
    );
  }
}
