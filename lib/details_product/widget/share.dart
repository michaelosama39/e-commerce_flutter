import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Share extends StatefulWidget {
  bool isCheck = true;

  Share({Key? key}) : super(key: key);

  @override
  _ShareState createState() => _ShareState();
}

class _ShareState extends State<Share> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        padding: EdgeInsets.all(10),
        width: 64,
        decoration: BoxDecoration(
          color: Color(0xFFFFE6E6),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            bottomLeft: Radius.circular(20),
          ),
        ),
        child: IconButton(
          icon: Icon(
            Icons.share,
            color: Colors.grey[400],
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
