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

  List<DocumentReference> _itemsList = [];
  List<DocumentReference> get itemsList => _itemsList;
  set itemsList(List<DocumentReference> _value) {
    _itemsList = _value;
  }

  void addToItemsList(DocumentReference _value) {
    _itemsList.add(_value);
  }

  void removeFromItemsList(DocumentReference _value) {
    _itemsList.remove(_value);
  }

  void removeAtIndexFromItemsList(int _index) {
    _itemsList.removeAt(_index);
  }

  DocumentReference? _selectedItemDetails;
  DocumentReference? get selectedItemDetails => _selectedItemDetails;
  set selectedItemDetails(DocumentReference? _value) {
    _selectedItemDetails = _value;
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
