import 'package:flutter/material.dart';
import 'package:lexiedu_app/ui/views/startup/start_up_model.dart';
import 'package:stacked/stacked.dart';

class StartupView extends ViewModelBuilderWidget<StartupViewModel> {
  @override
  Future<void> onViewModelReady(viewModel) async {
    super.onViewModelReady(viewModel);

    await viewModel.runStartUpLogic();
  }

  @override
  Widget builder(
    BuildContext context,
    StartupViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold();
  }

  StartupViewModel viewModelBuilder(BuildContext context) {
    return StartupViewModel();
  }
}
