import 'package:flutter/material.dart';

class QRScanner extends StatefulWidget {
  const QRScanner({super.key});

  @override
  State<QRScanner> createState() => _QRScannerState();
}

class _QRScannerState extends State<QRScanner> {
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: const BackButton(
     color: Colors.white
   ),
        title: const Text("Scan QR Code Here!",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.lightBlue,
      ),
      
    );
  }
}