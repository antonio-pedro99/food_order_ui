import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_order_ui/controllers/controller.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MenuPage extends HookConsumerWidget {
  MenuPage({Key? key}) : super(key: key);
  final Duration _duration = const Duration(microseconds: 1000);

  final current = Provider((ref) => ref.watch(Controller.menuProvider));
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _controller = useAnimationController(duration: _duration);

    var size = ref.watch(Controller.menuControllerProvider);
    /* useValueChanged(size, (_, __) async {
      _controller.forward();
    }); */

    return AnimatedContainer(
        duration: const Duration(milliseconds: 1000),
        curve: Curves.linearToEaseOut,
        child: Align(
            alignment: Alignment.topLeft,
            child: Card(
                elevation: 1.50,
                shadowColor: Colors.grey.shade200,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(25),
                  topRight: Radius.circular(25),
                )),
                child: Container(
                    padding: const EdgeInsets.fromLTRB(20, 90, 20, 40),
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    height: size,
                    width: size! / 3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Row(
                            children: [
                              IconButton(
                                  onPressed: () {
                                    _controller.reverse();
                                    ref
                                        .read(Controller
                                            .menuControllerProvider.notifier)
                                        .state = 0;
                                  },
                                  icon: Icon(
                                    Icons.close,
                                    color: Colors.grey.shade500,
                                    size: 28,
                                  )),
                              const SizedBox(width: 5),
                              Text(
                                "Menu",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.grey.shade500,
                                    fontWeight: FontWeight.w200),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 50),
                        SizedBox(
                          height: 200,
                          width: 200,
                          child: Column(
                            children: const [
                              CircleAvatar(
                                radius: 45,
                                backgroundImage: NetworkImage(
                                    "https://images.unsplash.com/photo-1629747387925-6905ff5a558a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=735&q=80"),
                              ),
                              SizedBox(height: 20),
                              Text(
                                "Ndoleny Kisseque",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.black54),
                              ),
                            ],
                          ),
                        ),
                        //  const SizedBox(height: 50),
                        Expanded(
                            child: Container(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  MenuTile(
                                      text: "Wallet",
                                      icon: FontAwesomeIcons.wallet),
                                  MenuTile(
                                      text: "Address",
                                      icon: FontAwesomeIcons.houseUser)
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  MenuTile(
                                      text: "Favorite",
                                      icon: FontAwesomeIcons.faceKissWinkHeart),
                                  MenuTile(
                                      text: "Settings", icon: Icons.settings)
                                ],
                              )
                            ],
                          ),
                        )),
                        Container(
                          height: 35,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.red[400],
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(50))),
                          child: const Center(
                            child: Text(
                              "Logout",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    )))));
    /*  return AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return Align(
              alignment: Alignment.topLeft,
              child: Card(
                elevation: 1.50,
                shadowColor: Colors.grey.shade200,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(25),
                  topRight: Radius.circular(25),
                )),
                child: Container(
                    padding: const EdgeInsets.fromLTRB(20, 90, 20, 40),
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    height: size,
                    width: size! / 3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Row(
                            children: [
                              IconButton(
                                  onPressed: () {
                                    _controller.reverse();
                                    ref
                                        .read(Controller
                                            .menuControllerProvider.notifier)
                                        .state = 0;
                                  },
                                  icon: Icon(
                                    Icons.close,
                                    color: Colors.grey.shade500,
                                    size: 28,
                                  )),
                              const SizedBox(width: 5),
                              Text(
                                "Menu",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.grey.shade500,
                                    fontWeight: FontWeight.w200),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 50),
                        SizedBox(
                          height: 200,
                          width: 200,
                          child: Column(
                            children: const [
                              CircleAvatar(
                                radius: 45,
                                backgroundImage: NetworkImage(
                                    "https://images.unsplash.com/photo-1629747387925-6905ff5a558a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=735&q=80"),
                              ),
                              SizedBox(height: 20),
                              Text(
                                "Ndoleny Kisseque",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.black54),
                              ),
                            ],
                          ),
                        ),
                        //  const SizedBox(height: 50),
                        Expanded(
                            child: Container(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  MenuTile(
                                      text: "Wallet",
                                      icon: FontAwesomeIcons.wallet),
                                  MenuTile(
                                      text: "Address",
                                      icon: FontAwesomeIcons.houseUser)
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  MenuTile(
                                      text: "Favorite",
                                      icon: FontAwesomeIcons.faceKissWinkHeart),
                                  MenuTile(
                                      text: "Settings", icon: Icons.settings)
                                ],
                              )
                            ],
                          ),
                        )),
                        Container(
                          height: 35,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.red[400],
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(50))),
                          child: const Center(
                            child: Text(
                              "Logout",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    )),
              ));
        }); */
  }
}

//}
class MenuTile extends StatelessWidget {
  const MenuTile({Key? key, this.text, this.icon, this.onTap})
      : super(key: key);
  final String? text;
  final IconData? icon;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    Color _color = Colors.grey.shade400;

    return GestureDetector(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: _color,
            size: 35,
          ),
          const SizedBox(height: 10),
          Text(
            "$text",
            style: TextStyle(
                fontWeight: FontWeight.w100, color: _color, fontSize: 18),
          ),
        ],
      ),
    );
  }
}
