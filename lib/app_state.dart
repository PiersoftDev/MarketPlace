import 'package:flutter/material.dart';
import 'backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _selectedItemId = '';
  String get selectedItemId => _selectedItemId;
  set selectedItemId(String _value) {
    _selectedItemId = _value;
  }

  String _selectedProjectId = '';
  String get selectedProjectId => _selectedProjectId;
  set selectedProjectId(String _value) {
    _selectedProjectId = _value;
  }

  String _selectedActivityId = '';
  String get selectedActivityId => _selectedActivityId;
  set selectedActivityId(String _value) {
    _selectedActivityId = _value;
  }

  String _selectedProjectName = '';
  String get selectedProjectName => _selectedProjectName;
  set selectedProjectName(String _value) {
    _selectedProjectName = _value;
  }

  String _selectedActivityName = '';
  String get selectedActivityName => _selectedActivityName;
  set selectedActivityName(String _value) {
    _selectedActivityName = _value;
  }

  String _orderId = '';
  String get orderId => _orderId;
  set orderId(String _value) {
    _orderId = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
