import 'package:flutter/material.dart';

class QRGenerator extends StatefulWidget {
  const QRGenerator({super.key});

  @override
  State<QRGenerator> createState() => _QRGeneratorState();
}

class _QRGeneratorState extends State<QRGenerator> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: const BackButton(
     color: Colors.white
   ),
        title: const Text("Generate QR Code Here!",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.lightBlue,
      ),
    );
  }
}