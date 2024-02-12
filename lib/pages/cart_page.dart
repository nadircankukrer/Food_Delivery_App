import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yemek_siparis_app/colors.dart';
import 'package:yemek_siparis_app/components/urunler_tile.dart';
import 'package:yemek_siparis_app/models/urunler.dart';
import 'package:yemek_siparis_app/models/urunler_dukkan.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {

  void removeFromCart(Urunler urunler){
    Provider.of<UrunlerDukkan>(context, listen: false).removeItemFromCart(urunler);
  }

  // pay button tapped
  void payNow(){
showDialog(context: context, builder: (context) => AlertDialog(
title: Text("Ödeme İşleminiz Başarıyla Gerçekleşti.",
textAlign: TextAlign.center, 
style: TextStyle(color: anaRenk,  ),),
backgroundColor: background,

),
);
    
  }


  @override
  Widget build(BuildContext context) {
    return Consumer<UrunlerDukkan>(builder: (context, value, child) =>Scaffold(
      appBar: AppBar(
        backgroundColor: ucunculRenk,
        title: Text("Sepetim", 
        style: TextStyle(
          fontFamily: "Schyler",
          color: anaRenk,
          fontWeight: FontWeight.bold
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              // list of cart items
              Expanded(child: ListView.builder(
                itemCount: value.userCart.length,
                itemBuilder: (context, index) {
                // get individual cart items
                Urunler eachUrunler = value.userCart[index];
    
                // return urunler tile
                return UrunlerTile(urunler: eachUrunler, onPressed: () => removeFromCart  (eachUrunler),
                icon: Icon(Icons.delete,));
    
              
              },)
              ),
              GestureDetector(onTap: payNow,
                child: Container(
                  padding: EdgeInsets.all(25),
                  width: double.infinity,
                  decoration: BoxDecoration(
                  color: anaRenk,
                  borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(
                    child: Text("Şimdi Öde",
                    style:TextStyle(color: background),
                     ),
                    ),
                ),
              )
            ],
            
    
          ),
        ),
      ),
    ) ,);
  }
}