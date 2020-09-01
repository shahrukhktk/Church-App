import 'package:flutter/material.dart';

class Item
{
  const Item(this.city_name);
  final String city_name;
//  final Icon icon;
}

class RecurrenceTypeDropDown extends StatefulWidget {
  @override
  _RecurrenceTypeDropDownState createState() => _RecurrenceTypeDropDownState();
}

class _RecurrenceTypeDropDownState extends State<RecurrenceTypeDropDown> {
  @override
  Widget build(BuildContext context) {

    var selectedCity;

    List<Item> cities = <Item>[
      const Item('One Time'),
      const Item('Weekly'),
      const Item('Monthly'),
      const Item('Yearly'),
    ];

    return DropdownButton<Item>(
      value: selectedCity,
      onChanged: (Item Value) {
        setState(() {
          selectedCity = Value;
        });
      },
      items: cities.map((Item city) {
        return  DropdownMenuItem<Item>(
          value: city,
          child: Row(
            children: <Widget>[
              Text(
                city.city_name,
                style:  TextStyle(color: Colors.black54),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}