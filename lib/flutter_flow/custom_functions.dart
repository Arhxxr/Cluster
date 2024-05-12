import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

bool checkUnivEmail(String email) {
  return email.endsWith('.edu');
}

bool checkPasswordValid(String password) {
  // check if a string is at least 8 characters, has a capital, a wild character, and a number
  if (password.length < 8) {
    return false;
  }
  final hasUpperCase = password.contains(RegExp(r'[A-Z]'));
  final hasWildChar = password.contains(RegExp(r'[!@#/\$&*~-]'));
  final hasNumber = password.contains(RegExp(r'[0-9]'));
  return hasUpperCase && hasWildChar && hasNumber;
}
