//import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:lexiedu_app/ui/views/home/home_view_model.dart';
import 'package:lexiedu_app/ui/views/homepage/homepage_view.dart';
import 'package:stacked/stacked.dart';

class HomeView extends ViewModelBuilderWidget<HomeViewModel> {
  @override
  Widget builder(BuildContext context, HomeViewModel viewModel, Widget? child) {
    final _height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: getViewForIndex(viewModel.currentIndex),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.camera,
          size: 26,
        ),
        backgroundColor: Color(0xFF409D78),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        onTap: viewModel.setIndex,
        icons: [
          Icons.home_outlined,
          Icons.videogame_asset_outlined,
          Icons.chat_bubble_outline,
          Icons.settings_outlined
        ],
        activeIndex: viewModel.currentIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.defaultEdge,
        leftCornerRadius: 0,
        rightCornerRadius: 0,
        height: _height * 0.060,
        activeColor: Color(0xFF409D78),
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
        return HomePageView();
      case 1:
        return Scaffold(
          body: Center(child: Text('Game Menu')),
        );
      case 2:
        return Scaffold(
          body: Center(child: Text('Chat Menu')),
        );
      case 3:
        return Scaffold(
          body: Center(child: Text('Settings Menu')),
        );
    }
    return Scaffold(
      body: Text('No Such Route'),
    );
  }
}
