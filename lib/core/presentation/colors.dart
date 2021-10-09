import 'package:flutter/material.dart';

const Color battlequiz1 = Color(0xfff5fbf9);
const Color battlequiz2 = Color(0xff69dea0);
const Color battlequiz3 = Color(0xff3c9ea8);
const Color battlequiz4 = Color(0xfff5fbf9);
const Color battlequiz5 = Color(0x3379ffd2);
const Color battlequiz6 = Color(0xFFD4FCEE);

const Gradient battlequizGradient = LinearGradient(
  begin: Alignment(1, 1),
  end: Alignment(-1, -1),
  colors: [battlequiz3, battlequiz2],
  stops: [0.0, 1.0],
);

final Shader linearGradient = const LinearGradient(
  colors: <Color>[Color(0xff3c9ea8), Color(0xff69dea0)],
).createShader(const Rect.fromLTWH(0, 0, 200, 70));

BoxShadow boxShadow = const BoxShadow(
  color: Colors.black12,
  offset: Offset(3, 3),
  blurRadius: 5,
);

BoxShadow transBoxShadow = BoxShadow(
  color: Colors.white.withOpacity(0.0),
  offset: const Offset(3, 3),
  blurRadius: 5,
);

const Color primaryColor = Color(0xffF98367);
const Color secondaryColor = Color(0xff434B5D); //work as secondary color
const Color backgroundColor = Colors.white;

const Color pageBackgroundColor = Color(0xFFFFEEEA);
const Color canvasColor = Color(0xffFFF4DE);

const Color darkPrimaryColor = Color(0xffF88166);
const Color darkSecondaryColor = Colors.white; //work as secondary color
const Color darkBackgroundColor = Color(0xff393939);
const Color darkPageBackgroundColor = Color(0xFF3D3D3D);
const Color darkCanvasColor = Color(0xff5A5A5A);
