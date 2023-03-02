import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({ Key? key }) : super(key: key);

  @override
  State<CartCounter> createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItems = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BuildOutlineButton(
          icon: Icons.remove,
          press: (){
            if(numOfItems > 1){
              setState(() {
                numOfItems--;
              });  
            }
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDeffaultPadding /2),
          child: Text(
            numOfItems.toString().padLeft(2,"0"),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        BuildOutlineButton(
          icon: Icons.add,
          press: () {
            setState(() {
              numOfItems++;
            });
          },
        )
      ],
    );
  }

  SizedBox BuildOutlineButton({required IconData icon, required VoidCallback press}) {
    return SizedBox(
        width: 40,
        height: 32,
        child: OutlineButton(
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(13)
          ),
          onPressed: press,
          child: Icon(icon),
        ),
      );
  }
}