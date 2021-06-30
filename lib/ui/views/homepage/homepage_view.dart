import 'package:flutter/material.dart';
import 'package:lexiedu_app/ui/views/homepage/homepage_model.dart';
import 'package:lexiedu_app/ui/widgets/konsultasi_card.dart';
import 'package:lexiedu_app/ui/widgets/main_progress_indicator.dart';
import 'package:lexiedu_app/ui/widgets/profile_bar.dart';
import 'package:lexiedu_app/ui/widgets/quiz_harian_bar.dart';
import 'package:stacked/stacked.dart';

class HomePageView extends ViewModelBuilderWidget<HomePageViewModel> {
  const HomePageView({Key? key}) : super(key: key);
  @override
  Widget builder(
      BuildContext context, HomePageViewModel viewModel, Widget? child) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFFFBFBFB),
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: _height * 0.95,
            minWidth: _width,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: _height * 0.060),
              //Profile dan nama
              ProfileBar(),
              SizedBox(height: 10),
              Text(
                viewModel.username.toString(),
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: _height * 0.045),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 25, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Lanjut Belajar',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      'Lihat lainya',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF828282),
                      ),
                    )
                  ],
                ),
              ),
              // Menulis Cepat
              MainProgressIndicator(
                width: _width * 0.90,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 25, 0, 10),
                child: Container(
                  width: _width * 10,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Latihan',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              QuizHarianBar(
                width: _width * 0.90,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 25, 0, 10),
                child: Container(
                  width: _width * 10,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Konsultasi',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              KonsultasiCard(
                width: _width * 0.90,
              ),
              SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  HomePageViewModel viewModelBuilder(BuildContext context) {
    return HomePageViewModel();
  }
}
