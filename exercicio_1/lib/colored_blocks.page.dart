import 'package:flutter/material.dart';
import 'colorful_block_widget.dart';

class ColoredBlocksPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          flex: 2,
          child: Row(
            children: <Widget>[
              ColorfulBlock(color: Colors.purple[100]),
              ColorfulBlock(color: Colors.purple[200]),
              ColorfulBlock(color: Colors.purple[300]),
            ],
          ),
        ),
        Expanded(
          flex: 3,
          child: Row(
            children: <Widget>[
              ColorfulBlock(color: Colors.red[100]),
              ColorfulBlock(color: Colors.red[200]),
            ],
          ),
        ),
        Expanded(
          flex: 4,
          child: Row(
            children: <Widget>[
              ColorfulBlock(color: Colors.green[100]),
              ColorfulBlock(color: Colors.green[200]),
              ColorfulBlock(color: Colors.green[300]),
              ColorfulBlock(color: Colors.green[400]),
            ],
          ),
        ),
      ],
    );
  }
}
