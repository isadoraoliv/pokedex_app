import 'package:flutter/material.dart';

class AppColors {
  static const Color purple = Color(0xFF8E24AA);
  static const Color blue = Color(0xFF456EFE);
  static const Color blueLighter = Color(0xFF40C4FF);
  static const Color blueLight = Color(0xFFE3F2FD);
  static const Color green = Color(0xFF1CCD9D);
  static const Color red = Color(0xFFFF6950);
  static const Color orange = Color(0xFFFB8C00);
  static const Color yellow = Color(0xFFFCAF29);
  static const Color white = Color(0xFFFFFFFF);
  static const Color whiteDark = Color(0xFFF5F5F5);
  static const Color black = Color(0xFF000000);

  static const Color grayDarker = Color(0XFF23303B);
  static const Color grayDark = Color(0xFF4F5962);
  static const Color grayMeduim = Color(0xFF727A81);
  static const Color gray = Color(0XFF8E949A);
  static const Color grayLight = Color(0xFFA4A9AE);
  static const Color grayLighter = Color(0xFFEEEEEE);

  static Color getColorType({String type}) {
    switch (type) {
      case 'Normal':
        return Colors.brown[400];
        break;
      case 'Fire':
        return Colors.red;
        break;
      case 'Water':
        return Colors.blue;
        break;
      case 'Grass':
        return Colors.green;
        break;
      case 'Electric':
        return Colors.amber;
        break;
      case 'Ice':
        return Colors.cyanAccent[400];
        break;
      case 'Fighting':
        return Colors.orange;
        break;
      case 'Poison':
        return Colors.purple;
        break;
      case 'Ground':
        return Colors.orange[300];
        break;
      case 'Flying':
        return Colors.indigo[200];
        break;
      case 'Psychic':
        return Colors.pink;
        break;
      case 'Bug':
        return Colors.lightGreen[500];
        break;
      case 'Rock':
        return Colors.grey;
        break;
      case 'Ghost':
        return Colors.indigo[400];
        break;
      case 'Dark':
        return Colors.brown;
        break;
      case 'Dragon':
        return Colors.indigo[800];
        break;
      case 'Steel':
        return Colors.blueGrey;
        break;
      case 'Fairy':
        return Colors.pinkAccent[100];
        break;
      default:
        return Colors.grey;
        break;
    }
  }
}
