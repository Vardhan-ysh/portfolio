import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:portfolio/desktop/desktop.dart';
import 'package:portfolio/mobile/mobile.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  FlutterNativeSplash.remove();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Yashvardhan's Portfolio",
      theme: ThemeData.dark().copyWith(
        colorScheme: ThemeData.dark().colorScheme.copyWith(
              primary: Colors.green,
              secondary: Colors.amber,
            ),
      ),
      themeMode: ThemeMode.dark,
      home: const PortfolioPage(),
    );
  }
}

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const PortfolioContent();
  }
}

class PortfolioContent extends StatelessWidget {
  const PortfolioContent({super.key});

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width < 800) {
      return const MobileView();
    } else {
      return const DesktopView();
    }
  }
}
