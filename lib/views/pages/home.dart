import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_order_ui/views/pages/product_details.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../controllers/controller.dart';
import '../../models/products_provider.dart';
import '../elements/category_tile.dart';
import '../elements/product_tile.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var size = MediaQuery.of(context).size;
    var getProducts = GetProducts();

    // final menuNotifier = ref.watch(Controller.menuProvider.notifier);

    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          toolbarHeight: 100,
          leading: IconButton(
              onPressed: () {
                ref.read(Controller.menuControllerProvider.notifier).state =
                    700;
              },
              icon: const Icon(
                Icons.menu,
              )),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  FontAwesomeIcons.bagShopping,
                  color: Colors.grey,
                ))
          ],
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
                      children: [
                        const TextField(
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
                        const SizedBox(height: 25),
                        _buildCategoryQueue(ref),
                        const SizedBox(height: 25),
                        Expanded(
                            flex: 0,
                            child: SizedBox(
                              height: 500,
                              child: ListView.builder(
                                scrollDirection: Axis.vertical,
                                //shrinkWrap: true,
                                itemCount: getProducts().length,
                                itemBuilder: (context, index) {
                                  return GestureDetector(
                                    child: AnimatedSwitcher(
                                      switchInCurve: Curves.bounceIn,
                                      transitionBuilder: (child, animation) {
                                        return SizeTransition(
                                          child: child,
                                          sizeFactor: animation,
                                        );
                                      },
                                      switchOutCurve: Curves.bounceOut,
                                      duration: const Duration(seconds: 3),
                                      child: ProductTile(
                                          product: getProducts()[index]),
                                    ),
                                    onTap: () {
                                      Navigator.of(context).push(
                                          PageRouteBuilder(pageBuilder:
                                              ((context, animation,
                                                  secondaryAnimation) {
                                        return FadeTransition(
                                            opacity: animation,
                                            child: ProductDetails(
                                              product: getProducts()[index],
                                            ));
                                      })));
                                    },
                                  );
                                },
                              ),
                            ))
                      ]))
            ],
          )
        ])))
      ],
    ));
  }

  Widget _buildCategoryQueue(WidgetRef ref) {
    final value = ref.watch(Controller.categorySwitchProvider);
    bool aux = false;
    return SizedBox(
      height: 110,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          CategoryTile(
            icon: FontAwesomeIcons.burger,
            category: "Burger",
            clicked: value ? value : aux,
            onClicked: () {
              ref.read(Controller.categorySwitchProvider.notifier).state = true;
            },
          ),
          const SizedBox(
            width: 10,
          ),
          CategoryTile(
              icon: FontAwesomeIcons.mugSaucer,
              category: "Coffe",
              clicked: !value ? value : aux,
              onClicked: () {
                ref.read(Controller.categorySwitchProvider.notifier).state =
                    true;
              }),
          const SizedBox(
            width: 10,
          ),
          const CategoryTile(
            icon: FontAwesomeIcons.pizzaSlice,
            category: "Pizza",
            clicked: false,
          ),
          const SizedBox(
            width: 10,
          ),
          const CategoryTile(
            icon: FontAwesomeIcons.bowlFood,
            category: "Bowls",
            clicked: false,
          ),
          const SizedBox(
            width: 10,
          ),
          const CategoryTile(
            icon: FontAwesomeIcons.cookie,
            category: "Bevareges",
            clicked: false,
          ),
        ],
      ),
    );
  }
}
