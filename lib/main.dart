import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yemek_siparis_app/models/urunler_dukkan.dart';
import 'package:yemek_siparis_app/pages/home_page.dart';
import 'package:yemek_siparis_app/pages/intro_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => UrunlerDukkan(),
      builder: ((context, child) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: IntroPage(),
      )),
      );
  }
}

