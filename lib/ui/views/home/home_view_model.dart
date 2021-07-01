import 'package:google_ml_kit/google_ml_kit.dart';
import 'package:images_picker/images_picker.dart';
import 'package:lexiedu/app/app.locator.dart';
import 'package:lexiedu/app/app.router.dart';
import 'package:lexiedu/services/machine_learning_service.dart';
import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends IndexTrackingViewModel {
  final _mlVisionService = locator<MachineLearningService>();
  final _navigationService = locator<NavigationService>();
  final _logger = Logger();
  final _snackbarService = locator<SnackbarService>();

  late RecognisedText recognisedText;

  void recogniseImage() async {
    try {
      setBusy(true);
      recognisedText = await openCamera();
      toReadingView();
    } catch (e) {
      _logger.e(e);
      _snackbarService.showSnackbar(
        title: 'Error',
        message: e.toString(),
      );
    } finally {
      setBusy(false);
    }
  }

  Future openCamera() async {
    List<Media>? res = await ImagesPicker.openCamera(
      pickType: PickType.image,
      quality: 1,
    );
    _mlVisionService.file = res!.elementAt(0);
    return await _mlVisionService.textRecognition();
  }

  void toReadingView() {
    _navigationService.navigateTo(
      Routes.readingView,
      arguments: ReadingViewArguments(recognisedText: recognisedText),
    );
  }
}
