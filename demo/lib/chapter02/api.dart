import 'package:demo/chapter02/image.dart';
import 'package:demo/chapter02/switch_checkbox.dart';
import 'package:flutter/material.dart';

import 'button.dart';

class Chapter02 {
  static Widget button() {
    return const ExampleButton();
  }

  static Widget image() {
    return const ExampleImage();
  }

  static Widget switchCheckbox() {
    return const ExampleSwitchCheckbox();
  }
}
