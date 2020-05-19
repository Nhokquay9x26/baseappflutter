// Design width
// It will be changed on each project
import 'package:flutter/material.dart';

var height;
var width;

void init(context) {
  MediaQueryData queryData = MediaQuery.of(context);
  height = queryData.size.height;
  width = queryData.size.width;
}

final DW = 375;
final DH = 812;

final vh = height / DH;
final vw = width / DW;

final sizeWidth = (number) => number * (width < height ? vw : vh);

final sizeHeight = (number) => number * (width > height ? vw : vh);

final sizeFont = (number) => number * (width < height ? vw : vh);
