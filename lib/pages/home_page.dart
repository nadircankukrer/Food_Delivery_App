import 'package:flutter/material.dart';
import 'package:yemek_siparis_app/colors.dart';
import 'package:yemek_siparis_app/components/bottom_nav_bar.dart';
import 'package:yemek_siparis_app/pages/cart_page.dart';
import 'package:yemek_siparis_app/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
    // navigate bottom bar
    int _selectedIndex = 0;
    void navigateBottomBar(int index){
      setState(() {
       _selectedIndex = index; 
      });
    }

    // pages
    final List<Widget> _pages = [
      // shop page
      ShopPage(),

      // cart page
      CartPage(),
    ];


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: background,
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) =>navigateBottomBar(index),
      ),
      body: _pages[_selectedIndex]
    );
  }
}