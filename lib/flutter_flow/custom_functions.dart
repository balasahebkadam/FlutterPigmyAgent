import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';

String? agentIdFunction(String? str) {
  // write to ti find length of textfiled and if length is 1 then display 001 and if length is 2 then dispplay 011  and if length is 3 display 111
  if (str == null) {
    return null;
  }

  int length = str.length;

  if (length == 1) {
    return '00' + str;
  } else if (length == 2) {
    return '0' + str;
  } else if (length == 3) {
    return str;
  }

  return null;
}

String? oprFunction(String? str) {
// write code to check if string is equal display string else display other string
  if (str == 'Detailed') {
    return 'D';
  } else if (str == 'Summary') {
    return 'S';
  } else {
    return 'S';
  }
}

String? optionFunction(String? str) {
  if (str == 'All') {
    return 'A';
  } else if (str == 'Pigmy') {
    return 'P';
  } else if (str == 'Loan') {
    return 'L';
  } else if (str == 'R.D.') {
    return 'R';
  } else {
    return 'P';
  }
}
