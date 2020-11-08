// import 'package:bakecode/framework/bakecode.dart';

// main() async {
//   await BakeCodeRuntime.instance.run();
//   BakeCodeRuntime.instance.publish('hell');
//   BakeCode.instance.publish('sd');
// }

import 'package:dart_serial_port/dart_serial_port.dart';

void main() {
  print('Available ports:');
  var i = 0;
  for (final name in SerialPort.availablePorts) {
    final sp = SerialPort(name);
    print('${++i}) $name');
    print('\tDescription: ${sp.description}');
    print('\tManufacturer: ${sp.manufacturer}');
    print('\tSerial Number: ${sp.serialNumber}');
    print('\tProduct ID: 0x${sp.productId.toRadixString(16)}');
    print('\tVendor ID: 0x${sp.vendorId.toRadixString(16)}');
    sp.dispose();
  }
}
