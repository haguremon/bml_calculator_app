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
              children:  const [
                Expanded(
                  child: ReusableCard(color:Color(0xFF1E1F32)),
                ),
                Expanded(
                  child: ReusableCard(color: Color(0xFF1E1F32)),
                ),
              ],
            ),
          ),
         const  Expanded(
            child: ReusableCard(color: Color(0xFF1E1F32)),
          ),
          Expanded(
            child: Row(
              children: const [
                Expanded(
                  child: ReusableCard(color:Color(0xFF1E1F32)),
                ),
                Expanded(
                  child: ReusableCard(color:Color(0xFF1E1F32)),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

//oopの醍醐味再利用できるの最高　//Extract Widgetでする事ができる
// ignore: use_key_in_widget_constructors,
class ReusableCard extends StatelessWidget {
  final Color color;
// required: 関数（メソッド）やコンストラクタで設定する引数（パラメータ）で、必ず値を入れる必要があるもの nullを許さない？
  // ignore: use_key_in_widget_constructors
  const ReusableCard ({required this.color});
 
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          // ignore: unnecessary_this
          color: this.color, 
          borderRadius: BorderRadius.circular(5)),
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