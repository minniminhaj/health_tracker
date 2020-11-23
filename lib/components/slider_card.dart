import 'package:flutter/material.dart';
import 'package:health_tracker/components/round_icon_button.dart';
import 'package:health_tracker/components/row_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants.dart';

class SliderCard extends StatelessWidget {
  final bool isFirstRow;

  final String labelName;
  final int labelValue;
  final String labelUnits;

  final double sliderMinimumValue;
  final double sliderMaximumValue;

  final Function onMinusButtonPressed;
  final Function onPlusButtonPressed;
  final Function onSliderChanged;

  SliderCard({
    this.isFirstRow = false,
    @required this.labelName,
    @required this.labelValue,
    @required this.labelUnits,
    @required this.sliderMinimumValue,
    @required this.sliderMaximumValue,
    @required this.onMinusButtonPressed,
    @required this.onPlusButtonPressed,
    @required this.onSliderChanged,
  });

  @override
  Widget build(BuildContext context) {
    return RowCard(
      isFirstRow: isFirstRow,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              
              children: <Widget>[
                RoundIconButton(
                  onPressed: onMinusButtonPressed,
                  icon: FontAwesomeIcons.minus,
                ),
                Column(
                  children: <Widget>[
                    Text(labelName, style: kLargeButtonTextStyle),
                    Row(
                      textBaseline: TextBaseline.alphabetic,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      children: <Widget>[
                        Text(labelValue.toString(),  style: TextStyle(
                          color: Colors.white,
                fontSize: 18.0,
                
              ),),
                        Text(labelUnits,  style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                
              ),),
                      ],
                    ),
                  ],
                ),
                 RoundIconButton(
                  onPressed: onPlusButtonPressed,
                  icon: FontAwesomeIcons.plus,
                ),
              
              ],
            ),
            Slider(
              min: sliderMinimumValue,
              max: sliderMaximumValue,
              value: labelValue.toDouble(),
              onChanged: (double newValue) {
                onSliderChanged(newValue);
              },
              activeColor: Theme.of(context).accentColor,
              inactiveColor: kActiveCardColour,
            ),
          ],
        ),
      ),
    );
  }
}
