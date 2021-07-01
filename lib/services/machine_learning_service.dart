import 'package:google_ml_kit/google_ml_kit.dart';
import 'package:images_picker/images_picker.dart';

class MachineLearningService {
  late Media file;

  Future textRecognition() async {
    final inputImage = InputImage.fromFilePath(file.path);
    final textDetector = GoogleMlKit.vision.textDetector();
    return await textDetector.processImage(inputImage);
  }
}
