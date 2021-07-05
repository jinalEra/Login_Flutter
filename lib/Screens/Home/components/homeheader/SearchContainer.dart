import 'package:flutter/material.dart';
import 'package:login/constant.dart';


class SearchContainer extends StatelessWidget {
  const SearchContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      width: MediaQuery.of(context).size.width * 0.6,
      height: 50,
      decoration: BoxDecoration(
        color: search_background.withOpacity(0.1),
        borderRadius: BorderRadius.circular(15)
      ),
    child: search(),
    );
  }
}

// ignore: camel_case_types
class search extends StatelessWidget {
  const search({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(1),
          child: TextField(
            onChanged: (value){
              //search value
            },
            style: TextStyle(
              fontSize: 12
            ),
            decoration: InputDecoration(
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              hintText: "Search Product...",
              prefix: Icon(Icons.search),
              contentPadding: EdgeInsets.symmetric(
                horizontal: 15
              )
            ),
          ),
        ),
      ],
    );
  }
}

