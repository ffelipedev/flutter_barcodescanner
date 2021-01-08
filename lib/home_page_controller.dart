import 'package:get/get.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class HomePageController extends GetxController {
  var valorCodigoBarras = '';

  Future<void> scanerCodigoBarras() async {
    String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
        'red', 'Cancelar', true, ScanMode.BARCODE);

    if (barcodeScanRes == '-1') {
      Get.snackbar('cancelado', 'Leitura Cancelada');
    } else {
      valorCodigoBarras = barcodeScanRes;
      update(); //atualiza a tela
    }
  }
}
