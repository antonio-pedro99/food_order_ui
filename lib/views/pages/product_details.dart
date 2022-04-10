import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_order_ui/controllers/cart_controller.dart';
import 'package:food_order_ui/controllers/product_controller.dart';
import 'package:food_order_ui/models/product.dart';

class ProductDetails extends ConsumerWidget {
  const ProductDetails({Key? key, this.product}) : super(key: key);

  final Product? product;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var size = MediaQuery.of(context).size;

    final isFav = ref.watch(isFavControllerProvider);

    final counterNotifier = ref.watch(newProductCounter.notifier);

    final current = Provider((ref) => ref.watch(newProductCounter));

    dynamic _count = ref.watch(current);

    int tmp = _count;

    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            actions: [
              IconButton(
                onPressed: () {
                  ref.read(isFavControllerProvider.notifier).state = !isFav!;
                  product!.isFavorite = isFav;
                },
                icon: Icon(
                  !product!.isFavorite!
                      ? Icons.favorite_border
                      : Icons.favorite_sharp,
                  color:
                      !product!.isFavorite! ? Colors.grey : Colors.red.shade300,
                ),
              )
            ],
            title: ElevatedButton.icon(
              style: ButtonStyle(
                  elevation: MaterialStateProperty.resolveWith((states) => 0),
                  backgroundColor: MaterialStateProperty.resolveWith(
                      (states) => Colors.white)),
              label: Text(
                "Kicolo, B. Esperança II",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.grey.shade600),
              ),
              onPressed: () {},
              icon: Icon(
                Icons.location_on,
                color: Colors.red[300],
              ),
            )),
        body: SafeArea(
            minimum: const EdgeInsets.all(8),
            child: ListView(
                padding: const EdgeInsetsDirectional.all(20),
                children: [
                  Hero(
                      tag: product!.name!,
                      child: Image.network(
                        "${product!.imageUrl}",
                        height: 250,
                        width: 250,
                        fit: BoxFit.contain,
                      )),
                  const SizedBox(height: 50),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 200,
                        child: Text(
                          "${product!.name}",
                          softWrap: true,
                          overflow: TextOverflow.fade,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Colors.black87),
                        ),
                      ),
                      Container(
                        height: 40,
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(15)),
                            border: Border.all(color: Colors.grey)),
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () {
                                  counterNotifier.remove();
                                },
                                icon: const Icon(Icons.remove)),
                            const VerticalDivider(
                              width: 0,
                            ),
                            Text(
                              tmp.toString(),
                              style: const TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.normal),
                            ),
                            IconButton(
                                onPressed: () {
                                  counterNotifier.add();
                                },
                                icon: Icon(Icons.add,
                                    color: Colors.red.shade300)),
                          ],
                        ),
                      )
                    ],
                  ),
                  Text(
                    "${product!.price} USD",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.red.shade300,
                        fontSize: 18),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "${product!.details}",
                    style: const TextStyle(
                        fontSize: 16,
                        wordSpacing: 1.4,
                        letterSpacing: 1.5,
                        fontWeight: FontWeight.w100),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 60,
                      width: 300,
                      decoration: BoxDecoration(
                          color: Colors.red.shade300,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(50))),
                      child: const Center(
                        child: Text(
                          "Add to cart",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ])));
  }
}
