import 'package:flutter/material.dart';
import 'input_page.dart'; //別ファイルの情報をimportできる//リファクタリング
/*
個々のコンポーネントを個別の Dart ファイルに分割するがいいらしい一つのファイルに大量のコートを書くと見ずらいからね
*/
void main() => runApp(BMICalculator());

// ignore: use_key_in_widget_constructors
class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //themeを指定することで統一のあるデザインにする事ができる
      theme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(backgroundColor: Color(0xFF090E22)),
         scaffoldBackgroundColor: const Color(0xff090D22),
        //  textTheme: const TextTheme(
        //    bodyText2: TextStyle(color: Colors.white) //ダークモードなのでテキストの色を変更しなくてもいい
        //    ),
        /*//sliderのテーマが統一できる
              sliderTheme: SliderTheme.of(context).copyWith(
                        trackHeight: 2.5,
                        activeTrackColor:Colors.white,
                        inactiveTrackColor: const Color.fromARGB(119, 158, 158, 158),
                        thumbShape: const RoundSliderThumbShape(
                          enabledThumbRadius: 7,
                        ),
                         thumbColor: Colors.red,

                        overlayShape: const RoundSliderOverlayShape(
                          overlayRadius: 14,
                        ),
                      overlayColor: const Color.fromARGB(91, 244, 67, 54),

                      ),
      
        */
  
      ),
      home: InputPage(),
    );
  }
}
