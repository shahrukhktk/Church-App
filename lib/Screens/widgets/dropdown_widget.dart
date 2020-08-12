import 'package:flutter/material.dart';

class Item
{
  const Item(this.city_name);
  final String city_name;
//  final Icon icon;
}

class DropDownClass extends StatefulWidget {
  @override
  _DropDownClassState createState() => _DropDownClassState();
}

class _DropDownClassState extends State<DropDownClass> {
  @override
  Widget build(BuildContext context) {

    var selectedCity;

    List<Item> cities = <Item>[
      const Item('Existing'),
      const Item('New'),
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