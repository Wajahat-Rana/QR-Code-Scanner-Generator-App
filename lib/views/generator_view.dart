import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QRGenerator extends StatefulWidget {
  const QRGenerator({super.key});

  @override
  State<QRGenerator> createState() => _QRGeneratorState();
}

class _QRGeneratorState extends State<QRGenerator> {

  TextEditingController urlController = TextEditingController();

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
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if(urlController.text.isNotEmpty)QrImageView(data: urlController.text,version: QrVersions.auto,size: 200.0,),
          const SizedBox(height: 20,),
Container(
  padding: const EdgeInsets.only(left: 20,right: 20),
      child: TextField(
        controller: urlController,
        decoration: InputDecoration(
          hintText: "Enter Text Here",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          label: const Text("Enter Text Here")
        ),
      ),
  ),
   const SizedBox(height: 20,),
      ElevatedButton(onPressed: (){
        setState(() {
          
        });
      }, child: const Text("Generate QR")),
            ],
          ),
        ),
      ),
    );
  }
}