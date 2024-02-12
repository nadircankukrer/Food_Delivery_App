import 'package:flutter/material.dart';
import 'package:yemek_siparis_app/colors.dart';
import 'package:yemek_siparis_app/models/urunler.dart';

class UrunlerTile extends StatelessWidget{
  final Urunler urunler;
   void Function()? onPressed;
   final Widget icon;
   UrunlerTile({super.key, 
   required this.urunler, 
   required this.onPressed,
   required this.icon,
   });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: ikincilRenk, borderRadius: BorderRadius.circular(12) ),
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.symmetric(vertical: 25, ),
      child: ListTile(
        
        textColor: background,
        title: Text(urunler.name,),
        subtitle: Text(urunler.price),
        leading: SizedBox(width: 75, height: 75,
          child: Image.asset(urunler.imagePath)),
        trailing: IconButton(
          icon: icon,
        onPressed: onPressed,),
      
       
      ),
    );
  }
}