import 'package:flutter/material.dart';
import 'package:project00/models/Product.dart';
import 'package:project00/screens/details_screen/widgets/details.dart';
import 'package:project00/config/config.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({Key key, @required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData screenData = MediaQuery.of(context);

    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: CustomAppBar(4.5),
      body: DetailsBody(product: product,),
    );
  }
}
