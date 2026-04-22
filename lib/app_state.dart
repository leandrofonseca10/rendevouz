import 'package:flutter/material.dart';
import '/backend/api_requests/api_manager.dart';
import 'backend/supabase/supabase.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _horarioselecionado = '';
  String get horarioselecionado => _horarioselecionado;
  set horarioselecionado(String value) {
    _horarioselecionado = value;
  }

  bool _hasAgendamento = false;
  bool get hasAgendamento => _hasAgendamento;
  set hasAgendamento(bool value) {
    _hasAgendamento = value;
  }

  String _lastError = '\'\'';
  String get lastError => _lastError;
  set lastError(String value) {
    _lastError = value;
  }
}
