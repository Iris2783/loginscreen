import 'package:flutter/material.dart';

import 'layout/responsive_layout.dart';
import 'loginscreen/desktop_scaffold.dart';
import 'loginscreen/mobile_scaffold.dart';
import 'loginscreen/tablet_scaffold.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'くじらSMS',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const ResponsiveLayout(
        mobileScaffold: MobileScaffold(),
        tabletScaffold: TabletScaffold(),
        desktopScaffold: DesktopScaffold(),
      ),
    );
  }
}
