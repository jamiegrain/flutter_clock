// ignore_for_file: prefer_const_declarations, prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:perc_clock/utils/utils.dart';

class DayPercClock extends StatefulWidget {
  DayPercClock({Key? key}) : super(key: key);

  @override
  State<DayPercClock> createState() => _DayPercClockState();
}

class _DayPercClockState extends State<DayPercClock> {
  String _timeString = '';
  Color _clockColor = Color(0xffffffff);

  @override
  void initState() {
    _timeString = _calcPercTime(DateTime.now());
    _clockColor = ColorUtils.textColor(_timeString);

    Timer.periodic(Duration(seconds: 1), (Timer t) => _getTime());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        _timeString,
        style: TextStyle(fontSize: 100, color: _clockColor),
      )),
    );
  }

  void _getTime() {
    final DateTime now = DateTime.now();
    final String formattedDateTime = _calcPercTime(now);
    final Color color = ColorUtils.textColor(formattedDateTime);
    setState(() {
      _timeString = formattedDateTime;
      _clockColor = color;
    });
  }

  String _calcPercTime(dateTime) {
    double hours = double.parse(DateFormat('HH').format(dateTime));
    double mins = double.parse(DateFormat('mm').format(dateTime));
    double secs = double.parse(DateFormat('ss').format(dateTime));

    double percHours = hours / 24;
    double percMins = mins / (60 * 24);
    double percSec = secs / (60 * 60 * 24);

    double finalPerc = (percHours + percMins + percSec) * 100;

    String finalPercStr = finalPerc.toStringAsFixed(2);

    return '$finalPercStr%';
  }
}
