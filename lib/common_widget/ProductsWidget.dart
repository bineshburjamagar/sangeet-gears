import 'package:flutter/material.dart';
import 'package:sangeetgears/screens/product.dart';

class ProductsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...List.generate(
              products.length,
              (index) => ProductCard(
                    product: products[index],
                  )),
        ],
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key key,
    this.width = 140,
    this.aspectRation = 1.02,
    @required this.product,
  }) : super(key: key);

  final double width, aspectRation;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10),
      child: SizedBox(
        width: width,
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1.02,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 4), // changes position of shadow
                      ),
                    ]),
                child: Image.asset(product.images[0]),
              ),
            ),
            const SizedBox(height: 5),
            Text(
              product.title,
              style: TextStyle(color: Colors.black),
              maxLines: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(product.price,
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.orange,
                    )),
                InkWell(
                  borderRadius: BorderRadius.circular(20),
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.all(8),
                    width: 28,
                    height: 28,
                    decoration: BoxDecoration(
                      color: Colors.orangeAccent,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.shopping_cart,
                      size: 15,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ProductsWidgetII extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...List.generate(
              products.length,
              (index) => ProductCard(
                    product: products[index],
                  )),
        ],
      ),
    );
  }
}
