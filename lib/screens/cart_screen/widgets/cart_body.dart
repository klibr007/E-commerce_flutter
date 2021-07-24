import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project00/config/config.dart';
import 'package:project00/models/cart.dart';
import 'package:project00/screens/cart_screen/widgets/cart.dart';

class CartBody extends StatefulWidget {
  const CartBody({Key key}) : super(key: key);

  @override
  _CartBodyState createState() => _CartBodyState();
}

class _CartBodyState extends State<CartBody> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData screenData = MediaQuery.of(context);
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: screenData.getProportionateScreenWidth(20)),
      child: ListView.builder(
        itemCount: demoCarts.length,
        itemBuilder: (context, index) => SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Dismissible(
              key: Key(
                demoCarts[index].product.id.toString(),
              ),
              onDismissed: (direction) {
                setState(
                  () {
                    demoCarts.removeAt(index);
                  },
                );
              },
              direction: DismissDirection.endToStart,
              background: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Color(0xFFFFE6E6),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: <Widget>[
                    Spacer(),
                    SvgPicture.asset("assets/icons/Trash.svg"),
                  ],
                ),
              ),
              child: CartItemCard(cart: demoCarts[index]),
            ),
          ),
        ),
      ),
    );
  }
}
