import 'package:flutter_svg/svg.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';
import 'package:skyline/constants.dart';
import 'package:skyline/nav_bar/detection/detection_page.dart';
import 'package:skyline/screens.dart';
import 'package:flutter/material.dart';

import 'detection/ml_kit/ml_kit.dart';

class NavBarView extends StatefulWidget {
  const NavBarView({
    super.key,
  });

  @override
  NavBarViewState createState() => NavBarViewState();
}

class NavBarViewState extends State<NavBarView> {
  late PersistentTabController _controller;
  late bool _hideNavBar;

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
    _hideNavBar = false;
  }

  List<Widget> _buildScreens() {
    return [
      // const HomeScreenPage(),
      const MainScreen(),
      const DetectionPage(),
      const MainScreen(),
      const MainScreen(),
      // const SettingsScreenPage(),
      const MainScreen(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.home),
        title: "Home",
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
        inactiveColorSecondary: Colors.purple,
      ),
      PersistentBottomNavBarItem(
        icon: Container(
            alignment: Alignment.centerLeft,
            height: deviceHeight * 0.05,
            width: deviceWidth * 0.05,
            child: SvgPicture.asset(
                'assets/svgviewer-output.svg')), // const Icon(Icons.search),
        title: "Detection",
        activeColorPrimary: Colors.green,
        inactiveColorPrimary: Colors.grey,
        routeAndNavigatorSettings: RouteAndNavigatorSettings(
          initialRoute: '/',
          routes: {
            '/first': (context) => const MainScreen2(),
            '/second': (context) => const MainScreen3(),
          },
        ),
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.add),
        title: "Stats",
        activeColorPrimary: Colors.teal,
        inactiveColorPrimary: Colors.grey,
        routeAndNavigatorSettings: RouteAndNavigatorSettings(
          initialRoute: '/',
          routes: {
            '/first': (context) => const MainScreen2(),
            '/second': (context) => const MainScreen3(),
          },
        ),
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.message),
        title: "Sharing",
        activeColorPrimary: Colors.deepOrange,
        inactiveColorPrimary: Colors.grey,
        routeAndNavigatorSettings: RouteAndNavigatorSettings(
          initialRoute: '/',
          routes: {
            '/first': (context) => const MainScreen2(),
            '/second': (context) => const MainScreen3(),
          },
        ),
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.settings),
        title: "Settings",
        activeColorPrimary: Colors.indigo,
        inactiveColorPrimary: Colors.grey,
        routeAndNavigatorSettings: RouteAndNavigatorSettings(
          initialRoute: '/',
          routes: {
            '/first': (context) => const MainScreen2(),
            '/second': (context) => const MainScreen3(),
          },
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    // final sh = MediaQuery.of(context).size.height;
    // final sw = MediaQuery.of(context).size.width;

    Icon navbarVisibilityIcon = const Icon(Icons.warning_rounded);
    String navbarVisibilityText = '';

    _hideNavBar == true
        ? navbarVisibilityIcon = const Icon(Icons.keyboard_arrow_up_rounded)
        : navbarVisibilityIcon = const Icon(Icons.keyboard_arrow_down_rounded);
    _hideNavBar == false
        ? navbarVisibilityText = 'Hide'
        : navbarVisibilityText = 'Show';

    return Scaffold(
      body: Stack(children: <Widget>[
        GestureDetector(
          onHorizontalDragEnd: (DragEndDetails details) {
            if (details.primaryVelocity! < 0 &&
                _controller.index != _navBarsItems().length - 1) {
              _controller.index++;
            } else if (details.primaryVelocity! > 0 && _controller.index != 0) {
              _controller.index--;
            }
          },
          child: PersistentTabView(
            context,
            controller: _controller,
            screens: _buildScreens(),
            items: _navBarsItems(),
            confineInSafeArea: true,
            backgroundColor: Colors.white,
            handleAndroidBackButtonPress: true,
            navBarHeight: kBottomNavigationBarHeight,
            hideNavigationBarWhenKeyboardShows: true,
            margin:
                const EdgeInsets.only(top: 10, bottom: 10, left: 15, right: 15),
            popActionScreens: PopActionScreensType.all,
            bottomScreenMargin: 0.0,
            onWillPop: (context) async {
              await showDialog(
                context: context!,
                useSafeArea: true,
                builder: (context) => Container(
                  height: 50.0,
                  width: 50.0,
                  color: Colors.white,
                  child: ElevatedButton(
                    child: const Text("Close"),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              );
              return false;
            },
            hideNavigationBar: _hideNavBar,
            decoration: NavBarDecoration(
                colorBehindNavBar: Colors.indigo,
                borderRadius: BorderRadius.circular(16.0)),
            popAllScreensOnTapOfSelectedTab: true,
            itemAnimationProperties: const ItemAnimationProperties(
              duration: Duration(milliseconds: 400),
              // curve: Curves.ease,
              curve: Curves.fastOutSlowIn,
            ),
            screenTransitionAnimation: const ScreenTransitionAnimation(
              animateTabTransition: true,
              // curve: Curves.ease,
              curve: Curves.fastOutSlowIn,
              duration: Duration(milliseconds: 200),
            ),
            navBarStyle: NavBarStyle.style9,
          ),
        ),
        Align(
            alignment: const Alignment(0.968, 1.068),
            child: SizedBox(
              height: deviceHeight * .1,
              width: deviceWidth * .1,
              child: FittedBox(
                child: FloatingActionButton.extended(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18)),
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  onPressed: () {
                    setState(() {
                      _hideNavBar = !_hideNavBar;
                      _hideNavBar == true
                          ? navbarVisibilityIcon =
                              const Icon(Icons.keyboard_arrow_up_rounded)
                          : navbarVisibilityText = 'show';
                      _hideNavBar == false
                          ? navbarVisibilityIcon =
                              const Icon(Icons.keyboard_arrow_down_rounded)
                          : navbarVisibilityText = 'Hide';
                    });
                  },
                  label: Text(navbarVisibilityText),
                  icon: navbarVisibilityIcon,
                ),
              ),
            ))
      ]),
    );
  }
}
