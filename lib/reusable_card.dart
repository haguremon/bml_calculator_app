import 'package:flutter/material.dart';

//oopの醍醐味再利用できるの最高　//Extract Widgetでする事ができる
// ignore: use_key_in_widget_constructors,
class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget? cardChild;
  final VoidCallback? onPress; //void Function()?
// required: 関数（メソッド）やコンストラクタで設定する引数（パラメータ）で、必ず値を入れる必要があるもの nullを許さない？
  // ignore: use_key_in_widget_constructors
  const ReusableCard({required this.color, this.cardChild, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          // ignore: unnecessary_this
          color: this.color,
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}
