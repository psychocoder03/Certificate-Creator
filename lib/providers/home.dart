import 'package:flutter/foundation.dart';

class HomeProvider with ChangeNotifier {
  String _xlsxFilePath;

  Map<String, dynamic> _xlsxFileTables;

  String _xlsxFileSelectedTable;

  String get xlsxFilePath => this._xlsxFilePath;

  set xlsxFilePath(String _xlsxFilePath) {
    this._xlsxFilePath = _xlsxFilePath;
    notifyListeners();
  }

  Map<String, dynamic> get xlsxFileTables => this._xlsxFileTables;

  set xlsxFileTables(Map<String, dynamic> _xlsxFileTables) {
    this._xlsxFileTables = _xlsxFileTables;
    this._xlsxFileSelectedTable = this._xlsxFileTables.keys.first;
    notifyListeners();
  }

  String get xlsxFileSelectedTable => this._xlsxFileSelectedTable;

  set xlsxFileSelectedTable(String _xlsxFileSelectedTable) {
    this._xlsxFileSelectedTable = _xlsxFileSelectedTable;
    notifyListeners();
  }
}
