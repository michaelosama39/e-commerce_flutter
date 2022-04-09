import 'package:flutter/material.dart';

class Comments extends StatefulWidget {
  const Comments({Key? key}) : super(key: key);

  @override
  State<Comments> createState() => _CommentsState();
}

class _CommentsState extends State<Comments> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.fromLTRB(15, 0, 10, 0),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  color: Color(0xFFFF7643),
                  height: 12,
                  width: 12,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Nice Product',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  color: Color(0xFFFF7643),
                  height: 12,
                  width: 12,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Beautfulll',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  color: Color(0xFFFF7643),
                  height: 12,
                  width: 12,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Niccccce',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
