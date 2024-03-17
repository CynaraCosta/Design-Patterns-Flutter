import 'package:flutter/material.dart';

abstract class CardBuilder {
  Widget setHeader();
  Widget setContent();
  Widget setFooter();
  Widget build();
}
