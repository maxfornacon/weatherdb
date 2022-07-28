import 'package:flutter/material.dart';
import 'package:weather/datamodels/post/post.dart';
import 'package:weather/ui/widgets/post_widget.dart';

class PostView extends StatelessWidget {
  final Post post;

  const PostView({
    Key? key,
    required this.post,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(post.pid.toString()),
      ),
      body: PostWidget(post: post),
    );
  }
}
