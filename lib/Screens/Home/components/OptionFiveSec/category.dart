
import 'package:flutter/material.dart';
import 'package:login/Screens/Home/components/OptionFiveSec/singlecardcode.dart';
import 'package:login/constant.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [

      { "icon": Icon(Icons.accessibility, color: org,), "text": "Access" },
      { "icon": Icon(Icons.account_balance, color: org), "text": "Balance" },
      { "icon": Icon(Icons.time_to_leave, color: org), "text": "Track " },
      { "icon": Icon(Icons.wallet_giftcard, color: org), "text": "Gift" },
      { "icon": Icon(Icons.import_export_rounded, color: org), "text": "Export" },

    ];
    
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...List.generate(
            categories.length, 
            (index) => CategoryCard(icon: categories[index]["icon"], text: categories[index]["text"], press: (){})
            )
        ],
      ),
    );
  }
}
