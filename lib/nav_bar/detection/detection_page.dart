import 'package:flutter/material.dart';
import 'package:skyline/device_top_system_ui_offset_sized_box.dart';
import 'package:skyline/nav_bar/detection/natural_languages/natural_language.dart';
import 'package:skyline/nav_bar/detection/vision/vision.dart';
import 'package:skyline/spacing_sized_box.dart';
import 'package:skyline/tappable_widget.dart';

import '../../constants.dart';
import 'ml_kit/nlp_detector_views/entity_extraction_view.dart';
import 'ml_kit/nlp_detector_views/language_identifier_view.dart';
import 'ml_kit/nlp_detector_views/language_translator_view.dart';
import 'ml_kit/nlp_detector_views/smart_reply_view.dart';
import 'ml_kit/vision_detector_views/barcode_scanner_view.dart';
import 'ml_kit/vision_detector_views/digital_ink_recognizer_view.dart';
import 'ml_kit/vision_detector_views/face_detector_view.dart';
import 'ml_kit/vision_detector_views/face_mesh_detector_view.dart';
import 'ml_kit/vision_detector_views/label_detector_view.dart';
import 'ml_kit/vision_detector_views/object_detector_view.dart';
import 'ml_kit/vision_detector_views/pose_detector_view.dart';
import 'ml_kit/vision_detector_views/selfie_segmenter_view.dart';
import 'ml_kit/vision_detector_views/text_detector_view.dart';

class DetectionPage extends StatelessWidget {
  const DetectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
          padding: const EdgeInsets.only(top: 4, bottom: 4, left: 4, right: 4),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const DeviceTopSystemUiOffsetSizedBox(
              adjustmentRatio: 1,
            ),
            const Vision(),
            const DeviceTopSystemUiOffsetSizedBox(
              adjustmentRatio: 1 / 4,
            ),
            SizedBox(
              height: deviceWidth / 6,
              width: double.maxFinite,
              child:
                  ListView(scrollDirection: Axis.horizontal, children: <Widget>[
                TappableWidget(
                  color: const Color(0xFF116AFF),
                  borderRadiusGeometry:
                      const BorderRadius.all(Radius.circular(20)),
                  screen: BarcodeScannerView(),
                  child: Container(
                    padding: const EdgeInsets.only(
                        top: 4, bottom: 4, left: 4, right: 4),
                    height: double.maxFinite,
                    child: const Center(
                        child: Text(
                      'Barcode Scanning',
                      textAlign: TextAlign.center,
                    )),
                  ),
                ),
                SpacingSizedBox(
                    width: deviceWidth * 0.024, height: deviceWidth * 0.024),
                TappableWidget(
                  color: const Color(0xFF116AFF),
                  borderRadiusGeometry:
                      const BorderRadius.all(Radius.circular(20)),
                  screen: FaceDetectorView(),
                  child: Container(
                    padding: const EdgeInsets.only(
                        top: 4, bottom: 4, left: 4, right: 4),
                    height: double.maxFinite,
                    child: const Center(
                        child: Text(
                      'Face Detection',
                      textAlign: TextAlign.center,
                    )),
                  ),
                ),
                SpacingSizedBox(
                    width: deviceWidth * 0.024, height: deviceWidth * 0.024),
                TappableWidget(
                  color: const Color(0xFF116AFF),
                  borderRadiusGeometry:
                      const BorderRadius.all(Radius.circular(20)),
                  screen: FaceMeshDetectorView(),
                  child: Container(
                    padding: const EdgeInsets.only(
                        top: 4, bottom: 4, left: 4, right: 4),
                    height: double.maxFinite,
                    child: const Center(
                        child: Text(
                      'Face Mesh Detection',
                      textAlign: TextAlign.center,
                    )),
                  ),
                ),
                SpacingSizedBox(
                    width: deviceWidth * 0.024, height: deviceWidth * 0.024),
                TappableWidget(
                  color: const Color(0xFF116AFF),
                  borderRadiusGeometry:
                      const BorderRadius.all(Radius.circular(20)),
                  screen: ImageLabelView(),
                  child: Container(
                    padding: const EdgeInsets.only(
                        top: 4, bottom: 4, left: 4, right: 4),
                    height: double.maxFinite,
                    child: const Center(
                        child: Text(
                      'Image Labeling',
                      textAlign: TextAlign.center,
                    )),
                  ),
                ),
                SpacingSizedBox(
                    width: deviceWidth * 0.024, height: deviceWidth * 0.024),
                TappableWidget(
                  color: const Color(0xFF116AFF),
                  borderRadiusGeometry:
                      const BorderRadius.all(Radius.circular(20)),
                  screen: ObjectDetectorView(),
                  child: Container(
                    padding: const EdgeInsets.only(
                        top: 4, bottom: 4, left: 4, right: 4),
                    height: double.maxFinite,
                    child: const Center(
                        child: Text(
                      'Object Detection',
                      textAlign: TextAlign.center,
                    )),
                  ),
                ),
                SpacingSizedBox(
                    width: deviceWidth * 0.024, height: deviceWidth * 0.024),
                TappableWidget(
                  color: const Color(0xFF116AFF),
                  borderRadiusGeometry:
                      const BorderRadius.all(Radius.circular(20)),
                  screen: TextRecognizerView(),
                  child: Container(
                    padding: const EdgeInsets.only(
                        top: 4, bottom: 4, left: 4, right: 4),
                    height: double.maxFinite,
                    child: const Center(
                        child: Text(
                      'Text Recognition',
                      textAlign: TextAlign.center,
                    )),
                  ),
                ),
                SpacingSizedBox(
                    width: deviceWidth * 0.024, height: deviceWidth * 0.024),
                TappableWidget(
                  color: const Color(0xFF116AFF),
                  borderRadiusGeometry:
                      const BorderRadius.all(Radius.circular(20)),
                  screen: DigitalInkView(),
                  child: Container(
                    padding: const EdgeInsets.only(
                        top: 4, bottom: 4, left: 4, right: 4),
                    height: double.maxFinite,
                    child: const Center(
                        child: Text(
                      'Digital Ink Recognition',
                      textAlign: TextAlign.center,
                    )),
                  ),
                ),
                SpacingSizedBox(
                    width: deviceWidth * 0.024, height: deviceWidth * 0.024),
                TappableWidget(
                  color: const Color(0xFF116AFF),
                  borderRadiusGeometry:
                      const BorderRadius.all(Radius.circular(20)),
                  screen: PoseDetectorView(),
                  child: Container(
                    padding: const EdgeInsets.only(
                        top: 4, bottom: 4, left: 4, right: 4),
                    height: double.maxFinite,
                    child: const Center(
                        child: Text(
                      'Pose Detection',
                      textAlign: TextAlign.center,
                    )),
                  ),
                ),
                SpacingSizedBox(
                    width: deviceWidth * 0.024, height: deviceWidth * 0.024),
                TappableWidget(
                  color: const Color(0xFF116AFF),
                  borderRadiusGeometry:
                      const BorderRadius.all(Radius.circular(20)),
                  screen: SelfieSegmenterView(),
                  child: Container(
                    padding: const EdgeInsets.only(
                        top: 4, bottom: 4, left: 4, right: 4),
                    height: double.maxFinite,
                    child: const Center(
                        child: Text(
                      'Selfie Segmentation',
                      textAlign: TextAlign.center,
                    )),
                  ),
                ),
                SpacingSizedBox(
                    width: deviceWidth * 0.024, height: deviceWidth * 0.024),
              ]),
            ),
            const DeviceTopSystemUiOffsetSizedBox(
              adjustmentRatio: 1,
            ),
            const NaturalLanguage(),
            const DeviceTopSystemUiOffsetSizedBox(
              adjustmentRatio: 1 / 4,
            ),
            SizedBox(
              height: deviceWidth / 6,
              width: double.maxFinite,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  TappableWidget(
                    color: const Color(0xFF116AFF),
                    borderRadiusGeometry:
                        const BorderRadius.all(Radius.circular(20)),
                    screen: LanguageIdentifierView(),
                    child: Container(
                      padding: const EdgeInsets.only(
                          top: 4, bottom: 4, left: 4, right: 4),
                      height: double.maxFinite,
                      child: const Center(
                          child: Text(
                        'Language ID',
                        textAlign: TextAlign.center,
                      )),
                    ),
                  ),
                  SpacingSizedBox(
                      width: deviceWidth * 0.024, height: deviceWidth * 0.024),
                  TappableWidget(
                    color: const Color(0xFF116AFF),
                    borderRadiusGeometry:
                        const BorderRadius.all(Radius.circular(20)),
                    screen: LanguageTranslatorView(),
                    child: Container(
                      padding: const EdgeInsets.only(
                          top: 4, bottom: 4, left: 4, right: 4),
                      height: double.maxFinite,
                      child: const Center(
                          child: Text(
                        'On-device Translation',
                        textAlign: TextAlign.center,
                      )),
                    ),
                  ),
                  SpacingSizedBox(
                      width: deviceWidth * 0.024, height: deviceWidth * 0.024),
                  TappableWidget(
                    color: const Color(0xFF116AFF),
                    borderRadiusGeometry:
                        const BorderRadius.all(Radius.circular(20)),
                    screen: SmartReplyView(),
                    child: Container(
                      padding: const EdgeInsets.only(
                          top: 4, bottom: 4, left: 4, right: 4),
                      height: double.maxFinite,
                      child: const Center(
                          child: Text(
                        'Smart Reply',
                        textAlign: TextAlign.center,
                      )),
                    ),
                  ),
                  SpacingSizedBox(
                      width: deviceWidth * 0.024, height: deviceWidth * 0.024),
                  TappableWidget(
                    color: const Color(0xFF116AFF),
                    borderRadiusGeometry:
                        const BorderRadius.all(Radius.circular(20)),
                    screen: EntityExtractionView(),
                    child: Container(
                      padding: const EdgeInsets.only(
                          top: 4, bottom: 4, left: 4, right: 4),
                      height: double.maxFinite,
                      child: const Center(
                          child: Text(
                        'Entity Extraction',
                        textAlign: TextAlign.center,
                      )),
                    ),
                  ),
                  SpacingSizedBox(
                      width: deviceWidth * 0.024, height: deviceWidth * 0.024),
                ],
              ),
            ),
            const DeviceTopSystemUiOffsetSizedBox(
              adjustmentRatio: 1,
            ),
          ])),
    );
  }
}
