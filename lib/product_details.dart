import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_order_ui/controller.dart';
import 'package:food_order_ui/product.dart';
import 'package:food_order_ui/product_tile.dart';

class ProductDetails extends ConsumerWidget {
  const ProductDetails({Key? key, this.product}) : super(key: key);

  final Product? product;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarBrightness: Brightness.dark,
              statusBarIconBrightness: Brightness.dark,
              statusBarColor: Colors.white),
          toolbarHeight: 100,
          backgroundColor: Colors.white,
          leading: const Icon(
            Icons.menu,
            color: Colors.grey,
          ),
          actions: [],
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Get your order in: ",
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.grey.shade400,
                      fontWeight: FontWeight.normal)),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(
                    Icons.location_on,
                    color: Colors.red[300],
                  ),
                  Text(
                    "Kicolo, B. Esperança II",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.grey.shade600),
                  )
                ],
              )
            ],
          ),
        ),
        SliverSafeArea(
            sliver: SliverList(
                delegate: SliverChildListDelegate([
          Stack(
            children: [
              Container(
                height: size.height - kToolbarHeight,
                width: size.width,
                decoration: BoxDecoration(
                    color: Colors.green.shade100.withOpacity(0.2),
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(45),
                        topRight: Radius.circular(45))),
              ),
              Container(
                  padding: const EdgeInsets.fromLTRB(20, 40, 20, 40),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        TextField(
                          decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              enabled: false,
                              hintText: "Search something",
                              prefixIcon: Icon(Icons.search),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)))),
                        ),
                        SizedBox(height: 25),
                        SizedBox(height: 25),
                      ]))
            ],
          )
        ])))
      ],
    ));
  }
}
