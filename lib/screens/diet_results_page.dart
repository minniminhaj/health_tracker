import 'package:flutter/material.dart';
import 'package:health_tracker/components/bottom_button.dart';
import 'package:health_tracker/components/result_card.dart';
import '../diet_calculator_brain.dart';



class DietResultsPage extends StatelessWidget {
  final DietCalculatorModel model;
  DietResultsPage({this.model});

  @override
   Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Diet Plan'),
      ),
      body: ListView(
        children: <Widget>[
          ResultCard(
            isFirstRow: true,
            labelName: model.minimumResultLabel,
            labelValue: model.minimumProteinIntake,
            labelUnits: model.units,
          ),
          if (model.maximumProteinIntake != null)
            ResultCard(
              labelName: model.maximumResultLabel,
              labelValue: model.maximumProteinIntake,
              labelUnits: model.units,
              additionalText: model.maximumResultAdditionalLabel,
            ),
          if (model.additionalInfoLabel != null)
            ResultCard(
              labelName: model.additionalInfoLabel,
              labelValue: model.powerLifterProteinIntake,
              labelUnits: model.units,
              additionalText: model.additionalInfoAdditionalLabel,
            ),
            BottomButton(
            buttonTitle: 'Re-Calculate',
            onTap: () {
              Navigator.pop(context);
            },
          )
          
        ],
      ),
    );
  }
}