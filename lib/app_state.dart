import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _name = prefs.getString('ff_name') ?? _name;
    });
    _safeInit(() {
      _debartment = prefs.getString('ff_debartment') ?? _debartment;
    });
    _safeInit(() {
      _University = prefs.getString('ff_University') ?? _University;
    });
    _safeInit(() {
      _level = prefs.getString('ff_level') ?? _level;
    });
    _safeInit(() {
      _semester = prefs.getString('ff_semester') ?? _semester;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _name = '';
  String get name => _name;
  set name(String value) {
    _name = value;
    prefs.setString('ff_name', value);
  }

  String _debartment = '';
  String get debartment => _debartment;
  set debartment(String value) {
    _debartment = value;
    prefs.setString('ff_debartment', value);
  }

  String _University = '';
  String get University => _University;
  set University(String value) {
    _University = value;
    prefs.setString('ff_University', value);
  }

  String _level = '';
  String get level => _level;
  set level(String value) {
    _level = value;
    prefs.setString('ff_level', value);
  }

  String _semester = '';
  String get semester => _semester;
  set semester(String value) {
    _semester = value;
    prefs.setString('ff_semester', value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
