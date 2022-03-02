import 'package:flutter/material.dart';
//コンポーネントで独立性があるって認識
const TextStyle _textTitleTextStyle = TextStyle(
  fontSize: 18,
   color: Color(0xFF8D8E98)
  );
// ignore: use_key_in_widget_constructors
class IconContent extends StatelessWidget {
  final String textTitle;
  final IconData iconData;
  
  // ignore: use_key_in_widget_constructors
  const IconContent({required this.textTitle, required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconData,
          size: 60.0,
        ),
        const SizedBox(height: 8),
        Text(
          textTitle,
          style:  _textTitleTextStyle,
        ),
      ],
    );
  }
}
