import 'package:flutter/material.dart';
import 'package:yemek_siparis_app/colors.dart';
import 'package:yemek_siparis_app/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // logo
          Padding(
            padding: const EdgeInsets.only(left: 80, right: 80, bottom: 40, top: 140),
            child: Image.asset("images/logo.png"),
          ),
          // Text
        const  Padding(
            padding: EdgeInsets.all(20.0),
            child: 
            Text("Yiyeceklerinizi kapınıza kadar teslim ediyoruz.",
            textAlign: TextAlign.center, 
            style:TextStyle(fontSize: 36, fontWeight: FontWeight.bold, fontFamily: "Schyler" ), 
            ),
          ),

          const SizedBox(height: 22,),

          Text("Her gün taze ürünler", 
          style: TextStyle(color: Colors.grey[600]) ,),
          
          const Spacer(),
          
          // Button

          GestureDetector(
            onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
              return HomePage();
            },)),
            child: Container(
              decoration: BoxDecoration(color: ucunculRenk, borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Text("Hemen Dene", style: TextStyle(color: background),),
              ),
            ),
          ),
          const Spacer()
      ],
      
      
      
      ),
    );
  }
}