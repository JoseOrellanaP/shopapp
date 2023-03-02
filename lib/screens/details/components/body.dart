import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/Product.dart';
import 'package:shop_app/screens/details/components/add_to_cart.dart';
import 'package:shop_app/screens/details/components/cart_counter.dart';
import 'package:shop_app/screens/details/components/description.dart';
import 'package:shop_app/screens/details/components/product_title_with_images.dart';

import 'colour_and_size.dart';
import 'counter_with_fav_btn.dart';

class Body extends StatelessWidget {
  const Body({ Key? key, required this.product }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    // It provides us total height and widht
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * .4),
                  padding: EdgeInsets.only(
                    top: size.height * .18,
                    left: kDeffaultPadding,
                    right: kDeffaultPadding
                    ),
                  //height: 400,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24)
                    )
                  ),
                  child: Column(
                    children: [
                      ColourAndSize(product: product),
                      SizedBox(height: kDeffaultPadding /2,),
                      Desciption(product: product),
                      SizedBox(height: kDeffaultPadding /2,),
                      CounterWithFavButton(),
                      SizedBox(height: kDeffaultPadding /2,),
                      AddToCart(product: product)
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product)
              ],
            ),
          ),
        ],
      ),
    );
  }
}






class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;
  
  const ColorDot({
    Key? key, 
    // by default is selected is false
    this.isSelected = false,
    required this.color, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: kDeffaultPadding /4,
        right: kDeffaultPadding / 2,
      ),
      padding: EdgeInsets.all(2.5),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? color : Colors.transparent,
        )
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle
        ),
      )
    );
  }
}
