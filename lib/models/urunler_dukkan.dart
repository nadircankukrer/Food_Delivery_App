import 'package:flutter/material.dart';
import 'package:yemek_siparis_app/models/urunler.dart';


class UrunlerDukkan extends ChangeNotifier{
  // Urunler for sale list
  final List<Urunler> _shop =  [
    // chicken
    Urunler(
    name: "Tavuk", 
    price: "94.95 ₺", 
    imagePath: "images/chicken.png"),
    // chocolate
    Urunler(
    name: "Bademli Çikolata", 
    price: "22.50 ₺", 
    imagePath: "images/chocolate.png"),
    // egg
    Urunler(
    name: "Yumurta", 
    price: "52.45 ₺", 
    imagePath: "images/egg.png"),

    // milk
    Urunler(
    name: "Süt", 
    price: "30.80 ₺", 
    imagePath: "images/milk.png"),

    // watermelon
    Urunler(
    name: "Karpuz ", 
    price: "50 ₺", 
    imagePath: "images/watermelon.png")
  ];

  // user cart

  List<Urunler> _userCart = [];

  // get urunler list

  List<Urunler> get urunlerDukkan => _shop;

  // get user cart

  List<Urunler> get userCart => _userCart;

  // add item to cart
  void addItemToCart(Urunler urunler) {
    _userCart.add(urunler);
    notifyListeners();
  }

  // remove item from cart

  void removeItemFromCart(Urunler urunler) {
    _userCart.remove(urunler);
    notifyListeners();
  }


}