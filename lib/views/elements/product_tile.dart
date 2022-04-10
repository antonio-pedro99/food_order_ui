import 'package:flutter/material.dart';
import 'package:food_order_ui/models/product.dart';

class ProductTile extends StatelessWidget {
  const ProductTile({Key? key, this.product}) : super(key: key);

  final Product? product;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: Card(
            elevation: 0.2,
            shadowColor: Colors.grey.shade100,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Container(
                padding: const EdgeInsets.fromLTRB(105, 20, 20, 0),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                height: 170,
                width: 280,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${product!.name}",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade700,
                          fontSize: 18),
                    ),
                    Text(
                      "${product!.vendor}",
                      style: TextStyle(
                          fontWeight: FontWeight.w200,
                          color: Colors.grey.shade400,
                          fontSize: 15),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      "${product!.price} USD",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade700,
                          fontSize: 18),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      height: 35,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.red.shade300,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(50))),
                      child: const Center(
                        child: Text(
                          "Buy",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )
                  ],
                )),
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Hero(
              tag: product!.name!,
              child: Image.network(
                "${product!.imageUrl}",
                fit: BoxFit.fitWidth,
                height: 190,
                width: 190,
              )),
        )
      ],
    );
  }
}
