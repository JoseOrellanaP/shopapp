import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/Product.dart';


class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: 
        const EdgeInsets.symmetric(horizontal: kDeffaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Aristocratic Hang bag",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            product.title,
            style: Theme.of(context).
              textTheme.headline4!
              .copyWith(
                color: Colors.white, 
                fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: kDeffaultPadding,),
          Row(
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(text: "Price\n"),
                    TextSpan(
                      text: "\$${product.price}",
                      style: Theme.of(context)
                        .textTheme
                        .headline4!
                        .copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        )
                    )
                  ]
                ),
              ),
              SizedBox(width: kDeffaultPadding,),
              Expanded(
                child: Image.asset(
                  product.image,
                  fit: BoxFit.fill,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}