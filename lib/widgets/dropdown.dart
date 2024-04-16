import 'package:flutter/material.dart';

class MyDropDownFormField extends StatelessWidget {
  const MyDropDownFormField({
    Key? key,
    required this.hintText,
    required this.dropdownItems,
    required this.selectedItem,
    required this.onChanged,
  }) : super(key: key);

  final String hintText;
  final List<String> dropdownItems;
  final String? selectedItem;
  final Function(String?) onChanged;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: selectedItem,
      items: dropdownItems.map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: onChanged,
      decoration: InputDecoration(
          hintText: hintText,
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.lightGreen),
          )),
    );
  }
}
