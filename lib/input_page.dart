import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';

const bottomContainerheight = 70.0;
const activeCardColor = Color(0xFF1E1F32); //複数同じだと一箇所を変えるだけでいいからこうしてる
const inactiveCardColor = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1455);

enum Gender {
  male,
  female,
}

// ignore: use_key_in_widget_constructors
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  // Color maleCardColor = inactiveCardColor;
  // Color femaleCardColor = inactiveCardColor;

  Gender? selectedGender;

  // void updateColor(Gender gender) {
  //   _maleCardColor =
  //       gender == Gender.male ? activeCardColor : inactiveCardColor;

  //   _femaleCardColor =
  //       gender == Gender.female ? activeCardColor : inactiveCardColor;

  //   //三項演算子よりはswitchの方が好きだけどね。。。
  //   // switch (gender) {
  //   //   case Gender.male:
  //   //     maleCardColor = activeCardColor;
  //   //     femaleCardColor = inactiveCardColor;
  //   //     break;
  //   //   case Gender.female:
  //   //     femaleCardColor = activeCardColor;
  //   //     maleCardColor = inactiveCardColor;
  //   //     break;
  //   // }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(children: [
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                child: ReusableCard(
                  onPress: (){
                    setState(() {
                       selectedGender = Gender.male;
                    });
                  },
                    color:  selectedGender == Gender.male ?   activeCardColor : inactiveCardColor,
                    cardChild: const IconContent(
                      textTitle: '男性',
                      iconData: FontAwesomeIcons.mars,
                    ),
                  ),
              ),
              Expanded(
                //GestureDetectorをReusableCardの方に埋め込む事によって見やすくなった Functionクラスを引数として使える
                child: ReusableCard(
                  onPress: (){
                    setState(() {
                       selectedGender = Gender.male;
                    });
                  },
                    color: selectedGender == Gender.female ?   activeCardColor : inactiveCardColor,
                    cardChild: const IconContent(
                      textTitle: '女性',
                      iconData: FontAwesomeIcons.venus,
                    )),
              ),
            ],
          ),
        ),
        const Expanded(
          child: ReusableCard(color: activeCardColor),
        ),
        Expanded(
          child: Row(
            children: const [
              Expanded(
                child: ReusableCard(color: activeCardColor),
              ),
              Expanded(
                child: ReusableCard(color: activeCardColor),
              ),
            ],
          ),
        ),
        Container(
          child: const Center(
            child: Text(
              '貴方のBMIを計算',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          ),
          color: bottomContainerColor,
          margin: const EdgeInsets.only(top: 10),
          width: double.infinity,
          height: bottomContainerheight,
        )
      ]),
    );
  }
}
