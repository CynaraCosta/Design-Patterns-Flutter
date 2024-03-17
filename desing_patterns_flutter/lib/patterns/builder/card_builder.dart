import 'package:flutter/material.dart';

abstract class CardBuilder {
  void setHeader();
  void setContent();
  void setFooter();
  Widget build();
}
