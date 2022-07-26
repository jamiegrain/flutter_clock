import 'package:flutter/material.dart';

class ColorUtils {
  static Color textColor(String dateTimePerc) {
    if (dateTimePerc.substring(dateTimePerc.length - 1, dateTimePerc.length) !=
        '%') {
      return const Color.fromARGB(200, 0, 255, 70);
    }

    String percString = dateTimePerc.substring(0, dateTimePerc.length - 1);

    double perc = double.parse(percString) / 100;

    int red = (perc * 255).toInt();
    int green = ((1 - perc) * 255).toInt();

    return Color.fromARGB(200, red, green, 70);
  }
}
