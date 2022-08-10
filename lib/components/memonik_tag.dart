import 'package:flutter/material.dart';

import '../utilities.dart';

Widget memonikTag({required final String text, final int? number}) => Container(
  margin: const EdgeInsets.all(4),
  padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 14),
  decoration: BoxDecoration(color: Colors.white10, borderRadius: BorderRadius.circular(8)),
  child:number == null ? Text(text).bodyText1().paddingSymmetric(vertical: 6, horizontal: 8) : iconTextHorizontal(
    leading: Text(number.toString()).bodyText1(color: const Color(0xff017E92)),
    trailing: Text(text).bodyText1(),
  ),
);
