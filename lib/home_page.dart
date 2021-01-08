import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_page_controller.dart';

class HomePage extends StatelessWidget {
  HomePage() {
    Get.put(HomePageController());
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BarCode Scanner'),
        centerTitle: true,
        backgroundColor: Colors.red[800],
      ),
      body: SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Valor Do código de barras: ',
              textAlign: TextAlign.center,
              style: Get.theme.textTheme.headline4
                  .copyWith(fontWeight: FontWeight.bold, color: Colors.red),
            ),

            //ver depois
            GetBuilder<HomePageController>(builder: (controller) {
              return Text(controller.valorCodigoBarras,
                  style: Get.theme.textTheme.headline4);
            }),
            SizedBox(
              height: 10,
            ), //espaço
            TextButton.icon(
                onPressed: () =>
                    Get.find<HomePageController>().scanerCodigoBarras(),
                icon: Image.asset(
                  'assets/icon.png',
                  width: 50,
                ),
                label: Text('Ler Código de Barras',
                    style: Get.theme.textTheme.headline6))
          ],
        ),
      ),
    );
  }
}
