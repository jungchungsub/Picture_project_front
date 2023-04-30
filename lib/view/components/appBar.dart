import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:picture_project/constants.dart';

AppBar appBar(String text) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    centerTitle: true,
    title: Text(
      text,
      style: const TextStyle(color: Colors.black),
    ),
    actions: const [
      Icon(
        CupertinoIcons.bell,
        color: gMainColor,
        size: 30,
      ),
      SizedBox(width: 10),
    ],
  );
}
