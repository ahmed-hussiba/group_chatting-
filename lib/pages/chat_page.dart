import 'package:flutter/material.dart';

class chatPage extends StatefulWidget {
  final String groupId;
  final String groupName;
  final String userName;

  const chatPage(
      {super.key,
      required this.groupId,
      required this.groupName,
      required this.userName});

  @override
  State<chatPage> createState() => _chatPageState();
}

class _chatPageState extends State<chatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text(widget.groupName)),
    );
  }
}
