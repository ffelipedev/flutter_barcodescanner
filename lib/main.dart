import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        //name = rota
        GetPage(name: '/', page: () => HomePage()),
      ],
    );
  }
}
