import 'package:flutter/material.dart';

class CurrencyConverterStateful extends StatefulWidget {
  const CurrencyConverterStateful({super.key});

  @override
  State<CurrencyConverterStateful> createState() =>
      _CurrencyConverterStateful();
}

class _CurrencyConverterStateful extends State<CurrencyConverterStateful> {
  double result = 0;
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: BorderSide(
        style: BorderStyle.solid,
        width: 2.0,
      ),
      borderRadius: BorderRadius.circular(0),
    );

    return Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(
        title: Text(
          "Converter USD to Rupiah",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.pink,
        elevation: 0,
        centerTitle: false,
        actions: [
          Icon(
            Icons.camera_alt_outlined,
            color: Colors.white,
          ),
          SizedBox(
            width: 12,
          ),
          Icon(
            Icons.medical_information_outlined,
            color: Colors.white,
          ),
          SizedBox(
            width: 12,
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(20),
                child: Text(
                  "Rp. ${result != 0 ? result.toStringAsFixed(3) : result.toStringAsFixed(0)}",
                  style: TextStyle(
                    fontSize: 45,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 18,
              ),
              TextField(
                controller: textEditingController,
                keyboardType: TextInputType.number,
                style: TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.monetization_on_outlined),
                  prefixIconColor: Colors.black,
                  hintText: "Tolong masukkan nominal USD:",
                  hintStyle: TextStyle(
                    color: Colors.black,
                  ),
                  fillColor: Colors.white,
                  filled: true,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
              ),
              SizedBox(
                height: 28,
              ),
              TextButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  elevation: 10,
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  minimumSize: Size(double.infinity, 50),
                ),
                onPressed: () {
                  setState(() {
                    result = double.parse(textEditingController.text) * 15000;
                  });
                },
                child: Text("Convert!"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// class CurrencyConverter extends StatelessWidget {
//   const CurrencyConverter({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final border = OutlineInputBorder(
//       borderSide: BorderSide(
//         style: BorderStyle.solid,
//         width: 2.0,
//       ),
//       borderRadius: BorderRadius.circular(0),
//     );
//     print("rebuilt");
//     double result = 0;
//     TextEditingController textEditingController = TextEditingController();

//     return Scaffold(
//       backgroundColor: Colors.pink,
//       appBar: AppBar(
//         title: Text(
//           "Converter USD to Rupiah",
//           style: TextStyle(color: Colors.white),
//         ),
//         backgroundColor: Colors.pink,
//         elevation: 0,
//         centerTitle: false,
//         actions: [
//           Padding(
//             padding: const EdgeInsets.only(right: 12.0),
//             child: Icon(
//               Icons.camera_alt_outlined,
//               color: Colors.white,
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(right: 12.0),
//             child: Icon(
//               Icons.medical_information_outlined,
//               color: Colors.white,
//             ),
//           ),
//         ],
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Container(
//               padding: EdgeInsets.all(20),
//               child: Text(
//                 result.toString(),
//                 style: TextStyle(
//                   fontSize: 45,
//                   color: Colors.white,
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: TextField(
//                 controller: textEditingController,
//                 keyboardType: TextInputType.number,
//                 style: TextStyle(
//                   color: Colors.black,
//                 ),
//                 decoration: InputDecoration(
//                   prefixIcon: Icon(Icons.monetization_on_outlined),
//                   prefixIconColor: Colors.black,
//                   hintText: "Tolong masukkan nominal USD:",
//                   hintStyle: TextStyle(
//                     color: Colors.black,
//                   ),
//                   fillColor: Colors.white,
//                   filled: true,
//                   focusedBorder: border,
//                   enabledBorder: border,
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(
//                 top: 10,
//                 left: 10,
//                 right: 10,
//               ),
//               // child: ElevatedButton(
//               //   style: ButtonStyle(
//               //     shape: WidgetStatePropertyAll(
//               //       RoundedRectangleBorder(
//               //         borderRadius: BorderRadius.all(
//               //           Radius.circular(
//               //             10,
//               //           ),
//               //         ),
//               //       ),
//               //     ),
//               //     elevation: WidgetStatePropertyAll(10),
//               //     backgroundColor: WidgetStatePropertyAll(Colors.white),
//               //     foregroundColor: WidgetStatePropertyAll(Colors.black),
//               //     minimumSize: WidgetStatePropertyAll(
//               //       Size(double.infinity, 50),
//               //     ),
//               //   ),
//               //   onPressed: () {
//               //     if (kDebugMode) {
//               //       print("Aw");
//               //     }
//               //   },
//               //   child: Text("Convert!"),
//               // ),
//               child: TextButton(
//                 style: ElevatedButton.styleFrom(
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.all(
//                       Radius.circular(10),
//                     ),
//                   ),
//                   elevation: 10,
//                   backgroundColor: Colors.white,
//                   foregroundColor: Colors.black,
//                   minimumSize: Size(double.infinity, 50),
//                 ),
//                 onPressed: () {
//                   result = double.parse(textEditingController.text) * 15000;
//                   build(context);
//                 },
//                 child: Text("Convert!"),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
