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
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Colors.red, //Color(0xFF1E1F32),
                        borderRadius: BorderRadius.circular(5)),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Colors.red, //Color(0xFF1E1F32),,
                        borderRadius: BorderRadius.circular(5)),
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            child: Container(
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.red, //Color(0xFF1E1F32),,
                  borderRadius: BorderRadius.circular(10)),
            ),
          ),

          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Colors.red, //Color(0xFF1E1F32),
                        borderRadius: BorderRadius.circular(5)),
                  ),
                ),

                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(8),
                  
                    decoration: BoxDecoration(
                        color: Colors.red, //Color(0xFF1E1F32),,
                        borderRadius: BorderRadius.circular(5)),
                  ),
                ),
              ],
            ),
          )
        ],
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