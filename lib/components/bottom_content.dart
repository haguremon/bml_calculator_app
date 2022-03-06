import 'package:flutter/material.dart';
import '../consts.dart';

class BottomContent extends StatelessWidget {
  final String bottomtitleLabel;
  final GestureTapCallback? onTap;

// ignore: use_key_in_widget_constructors
  const BottomContent({
    required this.bottomtitleLabel,
    required this.onTap
     });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            bottomtitleLabel,
            textAlign: TextAlign.center,
            style: kLargeTextStlyle,
          ),
        ),
        color: kBottomContainerColor,
        margin: const EdgeInsets.only(top: 10),
        padding: const EdgeInsets.only(bottom: 5),
        width: double.infinity,
        height: kBottomContainerheight,
      ),
    );
  }
}
