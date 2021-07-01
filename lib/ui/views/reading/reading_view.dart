import 'package:flutter/material.dart';
import 'package:google_ml_kit/google_ml_kit.dart';
import 'package:lexiedu/ui/views/reading/reading_model.dart';
import 'package:stacked/stacked.dart';

class ReadingView extends ViewModelBuilderWidget<ReadingViewModel> {
  final RecognisedText recognisedText;

  const ReadingView({required this.recognisedText});

  @override
  Widget builder(
      BuildContext context, ReadingViewModel viewModel, Widget? child) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Membaca'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Center(
            child: Text(
              recognisedText.text,
              overflow: TextOverflow.visible,
              textAlign: TextAlign.left,
              softWrap: true,
              style: TextStyle(
                fontSize: 25,
                fontFamily: "OpenDyslexic",
                fontStyle: FontStyle.normal,
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  ReadingViewModel viewModelBuilder(BuildContext context) {
    return ReadingViewModel();
  }
}
