// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'package:simple_barcode_scanner/simple_barcode_scanner.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Exemplo GET com API'),
//         ),
//         body: GetExample(),
//       ),
//     );
//   }
// }

// class GetExample extends StatefulWidget {
//   @override
//   _GetExampleState createState() => _GetExampleState();
// }

// class _GetExampleState extends State<GetExample> {
//   String result = "Clique no botão para buscar dados";

//   var _numero = 0;

//   Future<void> fetchData() async {
//     final url =
//         Uri.parse("https://teste-api-ashen.vercel.app/vendas/" + "$_numero");
//     try {
//       final response = await http.get(url);

//       if (response.statusCode == 200) {
//         final data = json.decode(response.body);
//         setState(() {
//           result = "Dados da Venda:\n${data['item']}";
//         });
//       } else {
//         setState(() {
//           result = "Erro: ${response.statusCode}";
//         });
//       }
//     } catch (e) {
//       setState(() {
//         result = "Erro ao fazer a requisição: $e";
//       });
//     }
//   }

//   void _setNumero(int num) {
//     setState(() {
//       _numero = num; // Incrementa o contador
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Padding(
//                 padding: EdgeInsets.all(10), // Espaçamento em todas as direções
//                 child: ElevatedButton(
//                   onPressed: () => _setNumero(1),
//                   child: Text("1"),
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.all(10), // Espaçamento em todas as direções
//                 child: ElevatedButton(
//                   onPressed: () => _setNumero(2),
//                   child: Text("2"),
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.all(10), // Espaçamento em todas as direções
//                 child: ElevatedButton(
//                   onPressed: () => _setNumero(3),
//                   child: Text("3"),
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.all(10), // Espaçamento em todas as direções
//                 child: ElevatedButton(
//                   onPressed: () => _setNumero(4),
//                   child: Text("4"),
//                 ),
//               ),
//             ],
//           ),
//           Text("0 + $_numero"),
//           Text(
//             result,
//             textAlign: TextAlign.center,
//             style: TextStyle(fontSize: 16),
//           ),
//           SizedBox(height: 20),
//           ElevatedButton(
//             onPressed: fetchData,
//             child: Text("Buscar Dados"),
//           ),
//           ElevatedButton(
//             onPressed: () async {
//               String? res = await SimpleBarcodeScanner.scanBarcode(
//                 context,
//                 barcodeAppBar: const BarcodeAppBar(
//                   appBarTitle: 'Test',
//                   centerTitle: true,
//                   enableBackButton: true,
//                   backButtonIcon: Icon(Icons.arrow_back_ios),
//                 ),
//                 isShowFlashIcon: true,
//                 delayMillis: 2000,
//                 cameraFace: CameraFace.front,
//               );
//               setState(() {
//                 result = res as String;
//               });
//             },
//             child: const Text('Open Scanner'),
//           )
//         ],
//       ),
//     );
//   }
// }
