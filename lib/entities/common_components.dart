import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

class ComComp {
  static Padding text(String text, FontWeight fontWeight, double fontSize,
      List padding, Color color, TextOverflow overflow) {
    return Padding(
      padding: new EdgeInsets.only(
          left: padding[0],
          right: padding[1],
          top: padding[2],
          bottom: padding[3]),
      child: Text(
        text,
        textAlign: TextAlign.left,
        overflow: overflow,
        style: TextStyle(
          fontWeight: fontWeight,
          fontSize: fontSize,
          color: color,
        ),
      ),
    );
  }

  static AppBar getAppBar(Color color, String title) {
    return AppBar(
      backgroundColor: COLORS.APP_THEME_COLOR,
      title: Center(
        child: new Text(title.toUpperCase()),
      ),
      actions: <Widget>[],
    );
  }

  static CircularProgressIndicator circularProgress() {
    return CircularProgressIndicator(
      valueColor: new AlwaysStoppedAnimation<Color>(COLORS.APP_THEME_COLOR),
    );
  }

  static TextStyle getCustomFont(int color, double fontSize,String fontName) {
    return new TextStyle(
      // set color of text
        color: Color(color),
        // set the font family as defined in pubspec.yaml
        fontFamily: fontName,
        // set the font weight
        fontWeight: FontWeight.w400,
        // set the font size
        fontSize: fontSize);
  }

  static GestureDetector internetErrorText(Function callback) {
    return GestureDetector(
      onTap: callback,
      child: Center(
        child: Text(MESSAGES.INTERNET_ERROR),
      ),
    );
  }

  static SnackBar getSnack(String content){
    return SnackBar(
        content: Text('Yay! A SnackBar!'));
  }
}