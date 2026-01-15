import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class ScrollService {
  // 1️⃣ ده الـ instance الوحيد اللي هنستخدمه في التطبيق كله:
  static final ScrollService _instance = ScrollService._internal();

  // 2️⃣ ده الـ constructor العام اللي بيرجع نفس الـ instance
  factory ScrollService() => _instance;
  ScrollService._internal();

  // 3️⃣ ده constructor خاص (private) علشان ما حدش يقدر يعمل new من بره

  // 4️⃣ الكنترولر نفسه
  static ItemScrollController drawerScrollController = ItemScrollController();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  static scrollToSection(int index) {
    if (drawerScrollController.isAttached) {
      drawerScrollController.scrollTo(
        index: index,
        duration: Duration(milliseconds: 500),
        curve: Curves.linear,
      );
    }
  }
}
