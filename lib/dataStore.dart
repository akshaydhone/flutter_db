import 'ai.dart';
import 'main.dart';
import 'package:flutter/material.dart';


class Store{
  String itemName;
  double itemPrice;
  String itemImage;
  Store.items({
    this.itemImage,
    this.itemName,
    this.itemPrice,
  });
}

List<Store> storeItems =[

  Store.items(
    itemName: "AI",
    //itemImage: "lib/artificial_insemination.dart",
  ),
  Store.items(
    itemName: "Pregnancy",
    //itemImage: "https://goo.gl/Du8giw",
  ),

  Store.items(
    itemName: "Calving",
    //itemImage: "https://goo.gl/vCn5r5",
  ),

  Store.items(
    itemName: "Treatment",
    //itemImage: "https://goo.gl/cGP6cH",
  ),
  Store.items(
    itemName: "Vaccination",
    //itemImage: "https://goo.gl/u2qZQB",
  ),


  Store.items(
    itemName: "Operation",
    //itemImage: "https://goo.gl/bYJBPJ",
  ),
  Store.items(
    itemName: "Sample",
    //itemImage: "https://goo.gl/Du8giw",
  ),

  Store.items(
    itemName: "Tag-Retag",
    //itemImage: "https://goo.gl/vCn5r5",
  ),

  Store.items(
    itemName: "Dehorning",
    //itemImage: "https://goo.gl/cGP6cH",
  ),
  Store.items(
    itemName: "Ditsokiya",
    //itemImage: "https://goo.gl/u2qZQB",
  ),

  Store.items(
    itemName: "Postmortem",
    //itemImage: "https://goo.gl/vCn5r5",
  ),

];