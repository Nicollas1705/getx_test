import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:getx_test/modeules/config/config_page.dart';
import 'package:getx_test/modeules/home/home_bindings.dart';
import 'package:getx_test/modeules/home/home_page.dart';
import 'package:getx_test/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Title",
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      getPages: [
        GetPage(
          name: "/",
          binding: HomeBindings(),
          page: () => HomePage(),
        ),
        GetPage(
          name: "/config",
          page: () => const ConfigPage(),
        ),
      ],
    );
    // return MaterialApp(
    //   title: 'Flutter Demo',
    //   theme: ThemeData(
    //     primarySwatch: Colors.blue,
    //   ),
    // );
  }
}
