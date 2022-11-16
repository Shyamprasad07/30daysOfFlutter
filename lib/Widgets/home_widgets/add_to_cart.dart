import 'package:flutter/material.dart';
import 'package:flutter_catlog/models/cart.dart';
import 'package:flutter_catlog/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class AddToCart extends StatefulWidget {
 final Item catalog;
  const AddToCart(Item , { 
    Key? key, required this.catalog, 
  }) : super(key: key);

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
    final _cart = CartModel();

  @override
  Widget build(BuildContext context) {
    bool isInCart = _cart.items.contains(widget.catalog)  ;
    return ElevatedButton(
      onPressed: () {
        if(!isInCart){
        
        isInCart = isInCart.toggle();
       // final catalog = CatalogModel.items;
        //_cart.catalog= catalog as CatalogModel;
        _cart.add(widget.catalog);
        setState(() {});
        }
      },
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            context.theme.buttonColor,
          ),
          shape: MaterialStatePropertyAll(
            StadiumBorder(),
          )),
      child: isInCart ? Icon(Icons.done) : "Add to cart".text.make(),
    );
  }
}
