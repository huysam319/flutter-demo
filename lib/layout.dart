import 'package:flutter/material.dart';
import 'package:flutter_demo/helpers/responsiveness.dart';
import 'package:flutter_demo/widgets/large_screen.dart';
import 'package:flutter_demo/widgets/small_screen.dart';
import 'package:flutter_demo/widgets/top_nav.dart';

class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: topNavigationBar(context, scaffoldKey),
      drawer: Drawer(),
      body: ResponsiveWidget(largeScreen: LargeScreen(), smallScreen: SmallScreen(),),
    );
  }
}