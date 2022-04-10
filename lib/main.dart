import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_order_ui/controllers/controller.dart';
import 'package:google_fonts/google_fonts.dart';
import 'views/pages/root_page.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food order UI',
      theme: ThemeData(
          appBarTheme: AppBarTheme.of(context).copyWith(
              iconTheme:
                  const IconThemeData.fallback().copyWith(color: Colors.grey),
              systemOverlayStyle: const SystemUiOverlayStyle(
                  statusBarBrightness: Brightness.dark,
                  statusBarIconBrightness: Brightness.dark,
                  statusBarColor: Colors.white),
              backgroundColor: Colors.white),
          iconTheme: IconTheme.of(context).copyWith(color: Colors.grey),
          scaffoldBackgroundColor: Colors.white,
          textTheme: GoogleFonts.aBeeZeeTextTheme(),
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.red,
          )),
      home: const AppRootPage(),
    );
  }
}
