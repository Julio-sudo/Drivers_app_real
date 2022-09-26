
import 'package:drivers_app/splashscreen/splash_screen.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    
    // ignore: prefer_const_constructors
    MyApp(
        child: MaterialApp(
          home: const MySplashScreen(),
          debugShowCheckedModeBanner: false,)            
    ),
  );
}

class MyApp extends StatefulWidget {
  final Widget? child;

  const MyApp({this.child});

  static void restartApp(BuildContext context) {
    context.findAncestorStateOfType<_MyAppState>()!.restartApp();
  }

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Key key = UniqueKey();
  void restartApp() {
    setState(() {
      key = UniqueKey();
    });
  }

  @override
  Widget build(BuildContext context) {
    return KeyedSubtree(key: key, child: widget.child!);
  }
}
