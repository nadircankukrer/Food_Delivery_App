
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yemek_siparis_app/colors.dart';
import 'package:yemek_siparis_app/components/urunler_tile.dart';
import 'package:yemek_siparis_app/models/urunler.dart';
import 'package:yemek_siparis_app/models/urunler_dukkan.dart';
import 'package:yemek_siparis_app/sidebar.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

    // add to urunler cart
  void addToCart(Urunler urunler){

    // add to cart
    Provider.of<UrunlerDukkan>(context, listen: false).addItemToCart(urunler);

    // let user know it add been successfully added
    
   showDialog(context: context, builder: (context) => AlertDialog(
title: Text("Ürün Sepete Eklendi.",
textAlign: TextAlign.center, 
style: TextStyle(color: anaRenk,  ),),
backgroundColor: background,

),
);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<UrunlerDukkan>(builder: (context, value, child) => Scaffold(
      drawer: SideBar(),
      appBar: AppBar(
      title: Text("Dükkan", 
      style: TextStyle(
      color: anaRenk, 
      fontWeight: FontWeight.bold, 
      fontFamily: "Schyler"),), 
      centerTitle: true,
      backgroundColor: ucunculRenk,),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 25, right: 25, left: 25),
          child: Column(children: [
            // heading message
           const Text(
              "Günaydın, neye ihtiyacın var?",
              style: TextStyle(fontSize: 20,) ,
              ),
            
              const SizedBox(height: 25,),
    
              // list of urunler to buy
              Expanded(child: ListView.builder(
                itemCount: value.urunlerDukkan.length,
                itemBuilder: (context, index) {
                // get individual urunler
                Urunler eachUrunler = value.urunlerDukkan[index];
    
                //return the tile for this urunler
    
                return UrunlerTile(
                  urunler: eachUrunler,
                  icon: Icon(Icons.add, color: anaRenk,),
                  onPressed: () => addToCart(eachUrunler),
                  );
              },))
          ],
          ),
        ),
      ),
    ),
    );
  }
}
      