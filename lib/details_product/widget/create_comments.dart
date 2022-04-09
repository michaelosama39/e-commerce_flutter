import 'package:e_commerce_flutter/auth/presentation/widget/textfiled_user.dart';
import 'package:e_commerce_flutter/default_button.dart';
import 'package:flutter/material.dart';

class CreateComment extends StatefulWidget {
  const CreateComment({Key? key}) : super(key: key);

  @override
  State<CreateComment> createState() => _CreateCommentState();
}

class _CreateCommentState extends State<CreateComment> {
  final _commentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.fromLTRB(7, 0, 0, 0),
              child: TextFiledUser(
                'write your commmets',
                'Commmets',
                '',
                TextInputType.text,
                _commentController,
                    (value) {},
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.fromLTRB(7, 0, 7, 0),
              child: DefaultButton(
                'Save',
                16,
                    () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
