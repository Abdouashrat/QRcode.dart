import 'dart:io';
import 'package:qr/qr.dart';

void QR(String str) {
  final qrCode = QrCode(4, QrErrorCorrectLevel.L)..addData(str);
  final qrImage = QrImage(qrCode);

  for (int x = 0; x < qrImage.moduleCount; x++) {
    for (int y = 0; y < qrImage.moduleCount; y++) {
      qrImage.isDark(y, x) ? stdout.write("██") : stdout.write("  ");
    }
    stdout.write('\n');
  }
}

void main() {
  stdout.write("Please enter URL or any line to convert it to QR code : ");
  QR(stdin.readLineSync()!);
}
