import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResultsControllers extends GetxController {
  final t1Control = TextEditingController();
  final t2Control = TextEditingController();
  final t3Control = TextEditingController();
  final t4Control = TextEditingController();
  final t5Control = TextEditingController();
  final t6Control = TextEditingController();
  final t7Control = TextEditingController();
  final t8Control = TextEditingController();
  final t9Control = TextEditingController();
  final t10Control = TextEditingController();

  final GlobalKey<FormState> resultsFormKey = GlobalKey<FormState>();

  String? validateAge(String? age) {
    if (age == '' || age == null) {
      return 'value required';
    }
    String pattern = r'^\d*\.?\d+$';
    RegExp reg = RegExp(pattern);
    if (!reg.hasMatch(age)) {
      return 'Insert Numeric!';
    }

    int ageValue = int.tryParse(age)!;
    int minAge = 0;
    int maxAge = 200;

    if (ageValue < minAge) {
      return 'Too low';
    }
    if (ageValue > maxAge) {
      return 'Too high';
    }

    return null;
  }

  String? validateAlb(String? alb) {
    if (alb == '' || alb == null) {
      return 'value required';
    }
    String pattern = r'^\d*\.?\d+$';
    RegExp reg = RegExp(pattern);
    if (!reg.hasMatch(alb)) {
      return 'Insert Numeric!';
    }
    int albValue = int.tryParse(alb)!;
    int minAlb = 0;
    int maxAlb = 8;

    if (albValue < minAlb) {
      return 'Too low';
    }
    if (albValue > maxAlb) {
      return 'Too high';
    }

    return null;
  }

  String? validateAlp(String? alp) {
    if (alp == '' || alp == null) {
      return 'value required';
    }
    String pattern = r'^\d*\.?\d+$';
    RegExp reg = RegExp(pattern);
    if (!reg.hasMatch(alp)) {
      return 'Insert Numeric!';
    }
    int alpValue = int.tryParse(alp)!;
    int minAlp = 10;
    int maxAlp = 500;

    if (alpValue < minAlp) {
      return 'Too low';
    }
    if (alpValue > maxAlp) {
      return 'Too high';
    }
    return null;
  }

  String? validateAlt(String? alt) {
    if (alt == '' || alt == null) {
      return 'value required';
    }
    String pattern = r'^\d*\.?\d+$';
    RegExp reg = RegExp(pattern);
    if (!reg.hasMatch(alt)) {
      return 'Insert Numeric!';
    }
    int altValue = int.tryParse(alt)!;
    int minAlt = 0;
    int maxAlt = 2000;

    if (altValue < minAlt) {
      return 'Too low';
    }
    if (altValue > maxAlt) {
      return 'Too high';
    }
    return null;
  }

  String? validateAst(String? ast) {
    if (ast == '' || ast == null) {
      return 'value required';
    }
    String pattern = r'^\d*\.?\d+$';
    RegExp reg = RegExp(pattern);
    if (!reg.hasMatch(ast)) {
      return 'Insert Numeric!';
    }
    int astValue = int.tryParse(ast)!;
    int minAst = 0;
    int maxAst = 2000;

    if (astValue < minAst) {
      return 'Too low';
    }
    if (astValue > maxAst) {
      return 'Too high';
    }
    return null;
  }

  String? validateBil(String? bil) {
    if (bil == '' || bil == null) {
      return 'value required';
    }
    String pattern = r'^\d*\.?\d+$';
    RegExp reg = RegExp(pattern);
    if (!reg.hasMatch(bil)) {
      return 'Insert Numeric!';
    }
    int bilValue = int.tryParse(bil)!;
    int minBil = 0;
    int maxBil = 30;

    if (bilValue < minBil) {
      return 'Too low';
    }
    if (bilValue > maxBil) {
      return 'Too high';
    }
    return null;
  }

  String? validateChe(String? che) {
    if (che == '' || che == null) {
      return 'value required';
    }
    String pattern = r'^\d*\.?\d+$';
    RegExp reg = RegExp(pattern);
    if (!reg.hasMatch(che)) {
      return 'Insert Numeric!';
    }
    int cheValue = int.tryParse(che)!;
    int minChe = 500;
    int maxChe = 20000;

    if (cheValue < minChe) {
      return 'Too low';
    }
    if (cheValue > maxChe) {
      return 'Too high';
    }
    return null;
  }

  String? validateCho(String? cho) {
    if (cho == '' || cho == null) {
      return 'value required';
    }
    String pattern = r'^\d*\.?\d+$';
    RegExp reg = RegExp(pattern);
    if (!reg.hasMatch(cho)) {
      return 'Insert Numeric!';
    }
    int choValue = int.tryParse(cho)!;
    int minCho = 50;
    int maxCho = 500;

    if (choValue < minCho) {
      return 'Too low';
    }
    if (choValue > maxCho) {
      return 'Too high';
    }
    return null;
  }

  String? validateProteins(String? prot) {
    if (prot == '' || prot == null) {
      return 'value required';
    }
    String pattern = r'^\d*\.?\d+$';

    RegExp reg = RegExp(pattern);
    if (!reg.hasMatch(prot)) {
      return 'Insert Numeric!';
    }
    int protValue = int.tryParse(prot)!;
    int minProt = 1;
    int maxProt = 20;

    if (protValue < minProt) {
      return 'Too low';
    }
    if (protValue > maxProt) {
      return 'Too high';
    }
    return null;
  }

  String? validateGgt(String? ggt) {
    if (ggt == '' || ggt == null) {
      return 'value required';
    }
    String pattern = r'^\d*\.?\d+$';
    RegExp reg = RegExp(pattern);
    if (!reg.hasMatch(ggt)) {
      return 'Insert Numeric!';
    }
    int ggtValue = int.tryParse(ggt)!;
    int minGgt = 0;
    int maxGgt = 2000;

    if (ggtValue < minGgt) {
      return 'Too low';
    }
    if (ggtValue > maxGgt) {
      return 'Too high';
    }
    return null;
  }
}
