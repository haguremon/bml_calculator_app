import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';
import 'consts.dart';

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
  Gender? _selectedGender;
  int _height = 170;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
    
        
         children: [
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                child: ReusableCard(
                  onPress: () {
                    setState(() {
                      _selectedGender = Gender.male;
                    });
                  },
                  color: _selectedGender == Gender.male
                      ? kActiveCardColor
                      : kInactiveCardColor,
                  cardChild: const IconContent(
                    textTitle: '男性',
                    iconData: FontAwesomeIcons.mars,
                  ),
                ),
              ),
              Expanded(
                //GestureDetectorをReusableCardの方に埋め込む事によって見やすくなった Functionクラスを引数として使える
                child: ReusableCard(
                    onPress: () {
                      setState(() {
                        _selectedGender = Gender.male;
                      });
                    },
                    color: _selectedGender == Gender.female
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: const IconContent(
                      textTitle: '女性',
                      iconData: FontAwesomeIcons.venus,
                    )),
              ),
            ],
          ),
        ),
        Expanded(
          child: ReusableCard(
            color: kActiveCardColor,
            cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Expanded(
                     child: Text(
                      
                      'HEIGHT',
                      style: kLabelTextStyle,
                                     ),
                   ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic, //ベースラインを揃えるだけ
                      children: <Widget>[
                        Text(
                          _height.toString(),
                          style: kNumberTextStyle,
                        ),
                        const Text(
                          'cm',
                          style: kLabelTextStyle,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    //特定のコンポーネントにThemeを指定
                    child: SliderTheme(
                      data:SliderTheme.of(context).copyWith(
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
                      child: Slider(
                        min: 0,
                        max: 300,
                        value: _height.toDouble(),
                        onChanged: (double newValue) {
                          setState(() {
                            _height = newValue.round();
                          });
                        },
                       
                        
                      ),
                    ),
                  )
                ]),
          ),
        ),
        Expanded(
          child: Row(
            children: const [
              Expanded(
                child: ReusableCard(color: kActiveCardColor),
              ),
              Expanded(
                child: ReusableCard(color: kActiveCardColor),
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
          color: kBottomContainerColor,
          margin: const EdgeInsets.only(top: 10),
          width: double.infinity,
          height: kBottomContainerheight,
        )
      ]),
    );
  }
}
