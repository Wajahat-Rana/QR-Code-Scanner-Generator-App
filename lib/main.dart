import 'package:flutter/material.dart';
import 'package:qr_code_scanner_generator/views/generator_view.dart';
import 'package:qr_code_scanner_generator/views/scanner_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QR Code Scanner & Generator',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
        useMaterial3: true,
      ),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("QR Code Scanner & Generator",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.lightBlue,
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              setState(() {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const QRScanner()));
              });
              
            }, child: const Text("QR Code Scanner")),
            const SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              setState(() {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const QRGenerator()));
              });
            }, child: const Text("QR Code Generator")),
          ],
        ),
      ),
    );
  }
}

