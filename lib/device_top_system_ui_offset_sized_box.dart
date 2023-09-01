import 'package:flutter/material.dart';
import 'package:skyline/constants.dart';

class DeviceTopSystemUiOffsetSizedBox extends StatelessWidget {
  final double adjustmentRatio;
  const DeviceTopSystemUiOffsetSizedBox({super.key, required this.adjustmentRatio});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: deviceTopSystemUIOffset * adjustmentRatio,);
  }
}