import 'package:flutter/material.dart';

class SearchBarClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 15, right: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            GestureDetector(
              child: Icon(
                Icons.search,
                color: Colors.grey[700],
              ),
              onTap: (){},
            ),
            SizedBox(width: 10.0),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none, hintText: 'Search here...',
                ),
                onSubmitted: (String vehicle){},
              ),
            ),

            GestureDetector(
              child: Icon(Icons.clear),
              onTap: (){},
            ),

          ],
        ),
      ),
    );
  }
}