// ignore_for_file: file_names
import 'package:flutter/material.dart';

class Link extends StatefulWidget {
  final String text;
  final TextStyle linkStyle;
  const Link({Key? key, required this.text, required this.linkStyle})
      : super(key: key);

  @override
  _LinkState createState() => _LinkState();
}

class _LinkState extends State<Link> {
  var _hover = false;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: widget.text,
        style: widget.linkStyle.copyWith(
          color: (_hover ? Theme.of(context).primaryColor : null),
        ),
        onEnter: (_) {
          setState(() {
            _hover = true;
          });
        },
        onExit: (_) {
          setState(() {
            _hover = false;
          });
        },
      ),
    );
  }
}
