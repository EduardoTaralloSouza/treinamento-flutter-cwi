import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  final IconData image;
  final Color backgroundColorImage;
  final String title;
  final String subtitle;

  const CardItem({Key key, this.image, this.backgroundColorImage, this.title, this.subtitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(fontSize: 26),
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(fontSize: 22, color: Color(0x50000000)),
      ),
      leading: Container(
        child: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: backgroundColorImage,
          ),
          child: Icon(
            image,
            size: 30,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}