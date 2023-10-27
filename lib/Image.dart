import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Imagee {
  static List<Imagee> list = [];

  final String large;
  final String medium;
  final String small;

  Imagee(this.large, this.medium, this.small);

  factory Imagee.fromJson(Map<String, dynamic> resp) {
    return Imagee(
      resp['src']['large'],
      resp['src']['medium'],
      resp['src']['small'],
    );
    // return Imagee("large", 'medium', 'small');
  }
}
