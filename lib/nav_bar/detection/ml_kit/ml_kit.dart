import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';
import 'package:skyline/constants.dart';

import 'package:skyline/nav_bar/detection/ml_kit/nlp_detector_views/entity_extraction_view.dart';
import 'package:skyline/nav_bar/detection/ml_kit/nlp_detector_views/language_identifier_view.dart';
import 'package:skyline/nav_bar/detection/ml_kit/nlp_detector_views/language_translator_view.dart';
import 'package:skyline/nav_bar/detection/ml_kit/nlp_detector_views/smart_reply_view.dart';
import 'package:skyline/nav_bar/detection/ml_kit/vision_detector_views/barcode_scanner_view.dart';
import 'package:skyline/nav_bar/detection/ml_kit/vision_detector_views/digital_ink_recognizer_view.dart';
import 'package:skyline/nav_bar/detection/ml_kit/vision_detector_views/face_detector_view.dart';
import 'package:skyline/nav_bar/detection/ml_kit/vision_detector_views/face_mesh_detector_view.dart';
import 'package:skyline/nav_bar/detection/ml_kit/vision_detector_views/label_detector_view.dart';
import 'package:skyline/nav_bar/detection/ml_kit/vision_detector_views/object_detector_view.dart';
import 'package:skyline/nav_bar/detection/ml_kit/vision_detector_views/pose_detector_view.dart';
import 'package:skyline/nav_bar/detection/ml_kit/vision_detector_views/selfie_segmenter_view.dart';
import 'package:skyline/nav_bar/detection/ml_kit/vision_detector_views/text_detector_view.dart';

class MlKit extends StatelessWidget {
  const MlKit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
          padding:
              const EdgeInsets.only(top: 4, bottom: 4, left: 4, right: 4),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: deviceTopSystemUIOffset,
                ),
              ),
              Center(
                child: Container(
                  margin: const EdgeInsets.all(12.0),
                  padding: const EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blueAccent, width: 3),
                    borderRadius:
                        const BorderRadius.all(Radius.circular(10.0)),
                  ),
                  child: const Text(
                    'Vision',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: deviceTopSystemUIOffset / 4,
                ),
              ),
              SizedBox(
                height: deviceHeight / 6,
                width: deviceWidth,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Material(
                      color: const Color(0xFF116AFF),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20)),
                      child: InkWell(
                        onTap: () {
                          pushNewScreenWithRouteSettings(
                            context,
                            settings: const RouteSettings(name: '/home'),
                            screen: BarcodeScannerView(),
                            pageTransitionAnimation:
                                PageTransitionAnimation.scale,
                          );
                        },
                        child: SizedBox(
                          width: deviceWidth / 3,
                          child: const Center(
                              child: Text(
                            'Barcode Scanning',
                            textAlign: TextAlign.center,
                          )),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: deviceWidth * 0.012,
                          right: deviceWidth * 0.012,
                          top: deviceWidth * 0.012,
                          bottom: deviceWidth * 0.012),
                    ),
                    Material(
                      color: const Color(0xFF116AFF),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20)),
                      child: InkWell(
                        onTap: () {
                          pushNewScreenWithRouteSettings(
                            context,
                            settings: const RouteSettings(name: '/home'),
                            screen: FaceDetectorView(),
                            pageTransitionAnimation:
                                PageTransitionAnimation.scale,
                          );
                        },
                        child: SizedBox(
                          width: deviceWidth / 3,
                          child: const Center(
                              child: Text(
                            'Face Detection',
                            textAlign: TextAlign.center,
                          )),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: deviceWidth * 0.012,
                          right: deviceWidth * 0.012,
                          top: deviceWidth * 0.012,
                          bottom: deviceWidth * 0.012),
                    ),
                    Material(
                      color: const Color(0xFF116AFF),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20)),
                      child: InkWell(
                        onTap: () {
                          pushNewScreenWithRouteSettings(
                            context,
                            settings: const RouteSettings(name: '/home'),
                            screen: FaceMeshDetectorView(),
                            pageTransitionAnimation:
                                PageTransitionAnimation.scale,
                          );
                        },
                        child: SizedBox(
                          width: deviceWidth / 3,
                          child: const Center(
                              child: Text(
                            'Face Mesh Detection',
                            textAlign: TextAlign.center,
                          )),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: deviceWidth * 0.012,
                          right: deviceWidth * 0.012,
                          top: deviceWidth * 0.012,
                          bottom: deviceWidth * 0.012),
                    ),
                    Material(
                      color: const Color(0xFF116AFF),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20)),
                      child: InkWell(
                        onTap: () {
                          pushNewScreenWithRouteSettings(
                            context,
                            settings: const RouteSettings(name: '/home'),
                            screen: ImageLabelView(),
                            pageTransitionAnimation:
                                PageTransitionAnimation.scale,
                          );
                        },
                        child: SizedBox(
                          width: deviceWidth / 3,
                          child: const Center(
                              child: Text(
                            'Image Labeling',
                            textAlign: TextAlign.center,
                          )),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: deviceWidth * 0.012,
                          right: deviceWidth * 0.012,
                          top: deviceWidth * 0.012,
                          bottom: deviceWidth * 0.012),
                    ),
                    Material(
                      color: const Color(0xFF116AFF),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20)),
                      child: InkWell(
                        onTap: () {
                          pushNewScreenWithRouteSettings(
                            context,
                            settings: const RouteSettings(name: '/home'),
                            screen: ObjectDetectorView(),
                            pageTransitionAnimation:
                                PageTransitionAnimation.scale,
                          );
                        },
                        child: SizedBox(
                          width: deviceWidth / 3,
                          child: const Center(
                              child: Text(
                            'Object Detection',
                            textAlign: TextAlign.center,
                          )),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: deviceWidth * 0.012,
                          right: deviceWidth * 0.012,
                          top: deviceWidth * 0.012,
                          bottom: deviceWidth * 0.012),
                    ),
                    Material(
                      color: const Color(0xFF116AFF),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20)),
                      child: InkWell(
                        onTap: () {
                          pushNewScreenWithRouteSettings(
                            context,
                            settings: const RouteSettings(name: '/home'),
                            screen: TextRecognizerView(),
                            pageTransitionAnimation:
                                PageTransitionAnimation.scale,
                          );
                        },
                        child: SizedBox(
                          width: deviceWidth / 3,
                          child: const Center(
                              child: Text(
                            'Text Recognition',
                            textAlign: TextAlign.center,
                          )),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: deviceWidth * 0.012,
                          right: deviceWidth * 0.012,
                          top: deviceWidth * 0.012,
                          bottom: deviceWidth * 0.012),
                    ),
                    Material(
                      color: const Color(0xFF116AFF),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20)),
                      child: InkWell(
                        onTap: () {
                          pushNewScreenWithRouteSettings(
                            context,
                            settings: const RouteSettings(name: '/home'),
                            screen: DigitalInkView(),
                            pageTransitionAnimation:
                                PageTransitionAnimation.scale,
                          );
                        },
                        child: SizedBox(
                          width: deviceWidth / 3,
                          child: const Center(
                              child: Text(
                            'Digital Ink Recognition',
                            textAlign: TextAlign.center,
                          )),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: deviceWidth * 0.012,
                          right: deviceWidth * 0.012,
                          top: deviceWidth * 0.012,
                          bottom: deviceWidth * 0.012),
                    ),
                    Material(
                      color: const Color(0xFF116AFF),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20)),
                      child: InkWell(
                        onTap: () {
                          pushNewScreenWithRouteSettings(
                            context,
                            settings: const RouteSettings(name: '/home'),
                            screen: PoseDetectorView(),
                            pageTransitionAnimation:
                                PageTransitionAnimation.scale,
                          );
                        },
                        child: SizedBox(
                          width: deviceWidth / 3,
                          child: const Center(
                              child: Text(
                            'Pose Detection',
                            textAlign: TextAlign.center,
                          )),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: deviceWidth * 0.012,
                          right: deviceWidth * 0.012,
                          top: deviceWidth * 0.012,
                          bottom: deviceWidth * 0.012),
                    ),
                    Material(
                      color: const Color(0xFF116AFF),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20)),
                      child: InkWell(
                        onTap: () {
                          pushNewScreenWithRouteSettings(
                            context,
                            settings: const RouteSettings(name: '/home'),
                            screen: SelfieSegmenterView(),
                            pageTransitionAnimation:
                                PageTransitionAnimation.scale,
                          );
                        },
                        child: SizedBox(
                          width: deviceWidth / 3,
                          child: const Center(
                              child: Text(
                            'Selfie Segmentation',
                            textAlign: TextAlign.center,
                          )),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}