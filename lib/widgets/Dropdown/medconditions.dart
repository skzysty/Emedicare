import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class MedCondition extends StatefulWidget {
  @override
  _MedCondition createState() => _MedConditionState();
}

class _MedConditionState extends State<MedCondition> {
  List<String> medconditionitems = ['Yes', 'No'];
  String? selectedvalue;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField2(
      decoration: InputDecoration(
        //Add isDense true and zero Padding.
        //Add Horizontal padding using buttonPadding and Vertical padding by increasing buttonHeight instead of add Padding here so that The whole TextField Button become clickable, and also the dropdown menu open under The whole TextField Button.
        isDense: true,
        contentPadding: EdgeInsets.zero,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        //Add more decoration as you want here
        //Add label If you want but add hint outside the decoration to be aligned in the button perfectly.
      ),
      isExpanded: true,
      icon: const Icon(
        Icons.arrow_drop_down,
        color: Colors.black45,
      ),
      iconSize: 30,
      buttonHeight: 40,
      buttonPadding: const EdgeInsets.only(left: 27, right: 10),
      dropdownDecoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      items: medconditionitems
          .map((item) => DropdownMenuItem<String>(
                value: item,
                child: Text(
                  item,
                  style: const TextStyle(
                    fontSize: 14,
                  ),
                ),
              ))
          .toList(),
      validator: (value) {
        if (value == null) {
          return 'Select';
        }
      },
      onChanged: (value) {
        //Do something when changing the item if you want.
      },
      onSaved: (value) {
        selectedvalue = value.toString();
      },
    );
  }
}
