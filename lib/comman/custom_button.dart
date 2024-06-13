import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';


class CustomButton extends StatelessWidget {
  final String title;
  final Function onTap;
  final Color textColor;
  final Color color;
  final bool hasBorder;
  final int fontSize;
  final int padding;
  final bool enabled;

  CustomButton(this.title, this.onTap,this.color,
      {this.textColor = Colors.white,
        this.fontSize = 16,
        this.enabled = true,
        this.padding = 24,
        this.hasBorder = false});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: !enabled
          ? null
          : () {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
        onTap();
      },
      child: Container(
        padding:
        EdgeInsets.symmetric(horizontal: padding.toDouble(), vertical: 12),
        decoration: BoxDecoration(
            border: Border.all(
                color: hasBorder ? enabled
                    ? HexColor('#F5A304')
                    : Colors.grey
                    : Colors.transparent,width: 2),
            borderRadius: BorderRadius.circular(22),
            color: enabled ? color : Colors.grey),
        child: Center(
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: textColor,
                fontSize: fontSize.toDouble(),
                fontWeight: FontWeight.w400),
          ),
        ),
      ),
    );
  }
}