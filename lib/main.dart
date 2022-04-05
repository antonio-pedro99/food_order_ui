import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_order_ui/controller.dart';
import 'package:google_fonts/google_fonts.dart';
import 'root_page.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(Controller.themControllerProvider);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food order UI',
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          textTheme: GoogleFonts.aBeeZeeTextTheme(),
          colorScheme: ColorScheme.fromSwatch(
              primarySwatch: Colors.red,
              brightness: !themeMode ? Brightness.light : Brightness.dark)),
      home: const AppRootPage(),
    );
  }
}
