import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

class TappableWidget extends StatelessWidget {
  final Color color;
  final BorderRadiusGeometry borderRadiusGeometry;
  final Widget screen, child;
  const TappableWidget(
      {super.key,
      required this.color,
      required this.borderRadiusGeometry,
      required this.screen,
      required this.child});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color,
      borderRadius: borderRadiusGeometry,
      child: InkWell(
        onTap: () {
          pushNewScreenWithRouteSettings(
            context,
            settings: const RouteSettings(name: '/home'),
            screen: screen,
            pageTransitionAnimation: PageTransitionAnimation.scale,
          );
        },
        child: child,
      ),
    );
  }
}
