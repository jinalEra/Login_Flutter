import 'package:flutter/material.dart';

class CheckOurCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      height: 120,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        boxShadow: [
          BoxShadow(
              offset: Offset(0, -15),
              blurRadius: 20,
              color: Color(0xFFDADADA).withOpacity(0.15))
        ],
      ),
      child: Column(
        children: [
          VoucherCodeRow(),
          //gape
          SizedBox(height: 10),
          // row 2 for total and btn
          TotalAndCheckOut()
        ],
      ),
    );
  }
}

class TotalAndCheckOut extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text.rich(
          TextSpan(
              text: "Total:\n",
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[700]),
              children: [
                TextSpan(
                    text: "\$337.56", style: TextStyle(color: Colors.orange))
              ]),
        ),
        Spacer(),
        SizedBox(
          child: GestureDetector(
            onTap: () {
              //add code to check out
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.orange),
              child: Text(
                "Check Out",
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class VoucherCodeRow extends StatelessWidget {
  const VoucherCodeRow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            height: 30,
            width: 30,
            // color: Colors.grey[50],
            child: Icon(
              Icons.receipt_long,
              color: Colors.orange,
              size: 24,
            )),
        Spacer(),
        GestureDetector(
            onTap: () {
              //add code for get voucher code
            },
            child: Text(
              "Add voucher Code",
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[700]),
            )),
        const SizedBox(width: 10),
        Icon(Icons.arrow_forward_ios, size: 13, color: Colors.grey[700])
      ],
    );
  }
}
