import 'package:flutter/material.dart';
import 'package:med_delivery_fyp/config/constants.dart';

class SizeDropdown extends StatefulWidget {
  const SizeDropdown({Key? key}) : super(key: key);

  @override
  State<SizeDropdown> createState() => _SizeDropdownState();
}

class _SizeDropdownState extends State<SizeDropdown> {
  String? dropdownValue;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      hint: Text("Select Qty"),
      isExpanded: true,
      value: dropdownValue,
      icon: const Icon(Icons.arrow_drop_down_sharp),
      iconSize: 24,
      elevation: 16,
      style: const TextStyle(color: kPrimaryColor),
      underline: Container(
        height: 2,
        color: kPrimaryColor,
      ),
      onChanged: (newValue) {
        setState(() {
          dropdownValue = newValue;
        });
      },
      items: ['1', '2', '3'].map((value) {
        return new DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
