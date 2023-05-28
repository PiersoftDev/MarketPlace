import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _orderId = '';
  String get orderId => _orderId;
  set orderId(String _value) {
    _orderId = _value;
  }

  dynamic _selectedProject;
  dynamic get selectedProject => _selectedProject;
  set selectedProject(dynamic _value) {
    _selectedProject = _value;
  }

  dynamic _selectedActivity;
  dynamic get selectedActivity => _selectedActivity;
  set selectedActivity(dynamic _value) {
    _selectedActivity = _value;
  }

  dynamic _selectedItem;
  dynamic get selectedItem => _selectedItem;
  set selectedItem(dynamic _value) {
    _selectedItem = _value;
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
