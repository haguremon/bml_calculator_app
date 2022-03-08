import 'package:flutter/material.dart';
import '../consts.dart';

//自分で作って見たクラス

class BottomReusableCard extends StatelessWidget {
  final String labelText;
  final int number;
  final Icon iconMinus;
  final Icon iconAdd;
  final VoidCallback tappedToDecrease;
  final VoidCallback tappedToIncrease;

  // ignore: use_key_in_widget_constructors
  const BottomReusableCard({
      required this.labelText,
      required this.number,
      required this.iconMinus,
      required this.iconAdd,
      required this.tappedToDecrease,
      required this.tappedToIncrease
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            labelText,
            style: kLabelTextStyle,
          ),
          Text(
            number.toString(),
            style: kNumberTextStyle,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RoundIconButton(
                icon: iconMinus,
                onTap: tappedToDecrease,
              ),
              const SizedBox(
                width: 5,
              ),
              RoundIconButton(
                icon: iconAdd,
                onTap: tappedToIncrease,
              )
            ],
          )
        ],
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  final Icon icon;
  final VoidCallback onTap;

  // ignore: use_key_in_widget_constructors
  const RoundIconButton({required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: icon,
      onPressed: onTap,
      constraints: const BoxConstraints.tightFor(
        width: 56,
        height: 56,
      ),
      shape: const CircleBorder(),
      fillColor: kInactiveCardColor,
    );
  }
}
