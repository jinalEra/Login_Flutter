import 'package:flutter/material.dart';
import 'package:login/Screens/cart/components/cartItemCard.dart';
import 'package:login/models/cart.dart';


class CartBody extends StatelessWidget {
  const CartBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListView.builder(
        itemCount: demoCarts.length,
        itemBuilder: (context, index) => 
        Dismissible(
            key: Key(demoCarts[index].product.toString()), 
            direction: DismissDirection.endToStart,
            background: Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(15)
              ),
              child: Row(
                children: [
                  Spacer(),
                  Icon(Icons.delete_forever_sharp, color: Colors.orange, size: 25,)
                ],
              ),
            ),
            // onDismissed: (direction) {
            //   setState( (){
            //     demoCarts.removeAt(index);
            //   });
            // },
            child: CardItemCart(cart:  demoCarts[index])
            ),),
    );
  }
}


