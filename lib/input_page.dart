import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('BMI CALCULATOR'),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.all(5),
                    padding: const EdgeInsets.all(10),
                    height: 250.0,
                    width: 130,
                    decoration: BoxDecoration(
                        color: Colors.red, //Color(0xFF1E1F32),
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    margin: const EdgeInsets.all(5),
                    padding: const EdgeInsets.all(10),
                    height: 250.0,
                    width: 130,
                    decoration: BoxDecoration(
                        color: Colors.red, //Color(0xFF1E1F32),,
                        borderRadius: BorderRadius.circular(5)),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                height: 80.0,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.red, //Color(0xFF1E1F32),,
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.all(5),
                    padding: const EdgeInsets.all(10),
                    height: 250.0,
                    width: 130,
                    decoration: BoxDecoration(
                        color: Colors.red, //Color(0xFF1E1F32),
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    margin: const EdgeInsets.all(5),
                    padding: const EdgeInsets.all(10),
                    height: 250.0,
                    width: 130,
                    decoration: BoxDecoration(
                        color: Colors.red, //Color(0xFF1E1F32),,
                        borderRadius: BorderRadius.circular(5)),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}




//  //任意のwidgetにもThemeを付ける事ができる
//       floatingActionButton: Theme(
//         data: ThemeData( floatingActionButtonTheme: const FloatingActionButtonThemeData(backgroundColor: Colors.green),  ),
//         child: FloatingActionButton(
//           onPressed: () {
//             print('tap');
//           },
//           child: const Icon(Icons.add),
//         ),
//       ),