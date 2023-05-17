import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

String? gerarpid() {
  var rng = new math.Random();
  int day = rng.nextInt(30);
  int month = rng.nextInt(12);
  int year = rng.nextInt(10);
  int hour = rng.nextInt(23) + 1;
  int minute = rng.nextInt(59);
  int seconds = rng.nextInt(59);
  String? ns = year.toString() +
      month.toString() +
      day.toString() +
      hour.toString() +
      minute.toString() +
      seconds.toString();
  return ns;
}

bool? isCPFValid(String? cpf) {
  // validar numero de CPF
  if (cpf == null) return false;
  cpf = cpf.replaceAll(RegExp(r'[^\d]'), '');
  if (cpf.length != 11) return false;
  if (cpf == '00000000000' ||
      cpf == '11111111111' ||
      cpf == '22222222222' ||
      cpf == '33333333333' ||
      cpf == '44444444444' ||
      cpf == '55555555555' ||
      cpf == '66666666666' ||
      cpf == '77777777777' ||
      cpf == '88888888888' ||
      cpf == '99999999999') return false;
  var d1 = 0;
  var d2 = 0;
  for (var n = 0; n < 9; n++) {
    d1 += int.parse(cpf[n]) * (10 - n);
    d2 += int.parse(cpf[n]) * (11 - n);
  }
  d1 = ((d1 % 11) < 2) ? 0 : 11 - (d1 % 11);
  d2 += d1 * 2;
  d2 = ((d2 % 11) < 2) ? 0 : 11 - (d2 % 11);
  return d1 == int.parse(cpf[9]) && d2 == int.parse(cpf[10]);
}
