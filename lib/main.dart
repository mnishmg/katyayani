import 'package:flutter/material.dart';
import 'package:katyayani_organics/pages/splash_page.dart';
import 'package:katyayani_organics/providers/cart_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (_) => CartProvider(),
    )
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Katyayani Organics',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        useMaterial3: false,
      ),
      home: SplashPage(),
    );
  }
}
