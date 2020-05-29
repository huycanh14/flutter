import 'package:flutter/material.dart';
import 'package:project_b/ui/wedgets/box_decora.dart';
import 'package:project_b/ui/wedgets/transform.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      builder: (context,HomeViewModel model, child) => 
       Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(50),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              BoxDecora(color: model.getColor('red')),
              BoxDecora(color:model.getColor('green')),
              BoxDecora(color:model.getColor('black')),
            ],
          ),
          Slider(
            value:model.red.toDouble(), min:0.0, max:model.max, divisions:180, label:model.red.toDouble().toString(),
            onChanged:(double newValue) {
              model.updateColorRed(newValue);
            }
          ),
          Slider(
            value:model.green.toDouble(), min:0.0, max:model.max, divisions:180, label:model.green.toDouble().toString(),
            onChanged:(double newValue) {
              model.updateColorGreen(newValue);
            }
          ),
          Slider(
            value:model.black.toDouble(), min:0.0, max:model.max, divisions:180, label:model.black.toDouble().toString(),
            onChanged:(double newValue) {
              model.updateColorBlack(newValue);
            }
          ),

          TransformView(text: "Lorem ipsum", color:Color.fromRGBO(model.red, model.green, model.black, 1), value:model.val),

          Slider(
            value:model.val.toDouble(), min:0.0, max:model.pi, divisions:180, label:model.val.toDouble().toString(),
            onChanged:(double newValue) {
              model.updateValue(newValue);
            }
          ),
        ],
      ),
      viewModelBuilder: () => HomeViewModel()
    );
  }
}