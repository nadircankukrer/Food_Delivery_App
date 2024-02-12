import 'package:flutter/material.dart';
import 'package:yemek_siparis_app/colors.dart';
import 'package:yemek_siparis_app/pages/home_page.dart';

class SideBar extends StatefulWidget {
  const SideBar({super.key});

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
        DrawerHeader(
          child: Image.asset("images/logo.png"),
          decoration: BoxDecoration(color: ucunculRenk),
        ),

        ListTile(
          leading: Icon(Icons.home),
          title: Text("Ana Sayfa"),
          onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
              return HomePage();
            },)),
          ),
          ListTile(
            leading: Icon(Icons.my_library_books_rounded),
            title: Text("Hakkımızda"),
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text("İletişim"),
          ),
          ListTile(
            leading: Icon(Icons.logout_outlined),
            title: Text("Çıkış Yap"),
          ),
        ],
      ),
    );
  }
}