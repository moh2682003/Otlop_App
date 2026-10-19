import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:otlop_app/HomeScreen.dart';
import 'package:otlop_app/LoginScreesn.dart';
import 'package:otlop_app/ProductDetails.dart';
import 'package:otlop_app/RegisterScreen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
    ),
  );

  runApp(const OtlopApp());
}

class OtlopApp extends StatelessWidget {
  const OtlopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,

      home: clsLoginScreen(),
    );
  }
}
