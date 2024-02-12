import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:yemek_siparis_app/colors.dart';

class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyBottomNavBar({super.key, required this.onTabChange,});

  @override
  Widget build(BuildContext context) {  
    return Container(
      
      color: ucunculRenk,
      
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical:5),
        child: GNav(
          backgroundColor: ucunculRenk,
          onTabChange: (value) => onTabChange!(value),
          mainAxisAlignment: MainAxisAlignment.center,
          activeColor: anaRenk,
          tabActiveBorder:  Border.all(color: anaRenk),
          tabBorderRadius: 24,
          color:background,
          gap: 5,
          tabs: const [
          GButton(
          
          text: "Dükkan",
          icon: Icons.home,
          
          
          ),
          GButton(
          icon: Icons.shopping_bag_outlined,
          text: "Sepetim",
          ),
        ],
        ),
      ),
    );
  }
}