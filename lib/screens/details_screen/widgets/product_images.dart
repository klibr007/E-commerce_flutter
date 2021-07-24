import 'package:flutter/material.dart';
import 'package:project00/models/Product.dart';
import 'package:project00/config/config.dart';

class ProductImages extends StatefulWidget {
  final Product product;

  const ProductImages({Key key, @required this.product}) : super(key: key);

  @override
  _ProductImagesState createState() => _ProductImagesState();
}

class _ProductImagesState extends State<ProductImages> {
  int selectedImage = 0;

  @override
  Widget build(BuildContext context) {
    MediaQueryData screenData = MediaQuery.of(context);

    return Column(
      children: <Widget>[
        SizedBox(
          width: screenData.getProportionateScreenWidth(238),
          child: AspectRatio(
            aspectRatio: 1.00,
            child: Image.asset(widget.product.images[selectedImage]),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ...List.generate(widget.product.images.length, (index) =>
                buildSmallPreview(screenData, index))
          ],
        )
      ],
    );
  }

  GestureDetector buildSmallPreview(MediaQueryData screenData, int index) {
    return GestureDetector(
      onTap: (){
        setState(() {
          selectedImage = index;
        });
      },
      child: Container(
        margin: EdgeInsets.only(right: screenData.getProportionateScreenWidth(15)),
        padding: EdgeInsets.all(8.00),
        height: screenData.getProportionateScreenWidth(48),
        width: screenData.getProportionateScreenWidth(48),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: selectedImage == index ? Palette.primaryColor : Colors.transparent)),
        child: Image.asset(widget.product.images[index]),
      ),
    );
  }
}
