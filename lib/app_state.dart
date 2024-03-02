import 'package:flutter/material.dart';
import '/backend/backend.dart';
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

  String _titulo = 'Rango Delivery';
  String get titulo => _titulo;
  set titulo(String value) {
    _titulo = value;
  }

  int _tipo = 0;
  int get tipo => _tipo;
  set tipo(int value) {
    _tipo = value;
  }

  bool _adm = true;
  bool get adm => _adm;
  set adm(bool value) {
    _adm = value;
  }

  double _total = 0.0;
  double get total => _total;
  set total(double value) {
    _total = value;
  }

  int _quantidade = 1;
  int get quantidade => _quantidade;
  set quantidade(int value) {
    _quantidade = value;
  }

  double _subtotal = 0.0;
  double get subtotal => _subtotal;
  set subtotal(double value) {
    _subtotal = value;
  }

  String _idPedidoInserir = '';
  String get idPedidoInserir => _idPedidoInserir;
  set idPedidoInserir(String value) {
    _idPedidoInserir = value;
  }

  DocumentReference? _pedidoRefCompleta;
  DocumentReference? get pedidoRefCompleta => _pedidoRefCompleta;
  set pedidoRefCompleta(DocumentReference? value) {
    _pedidoRefCompleta = value;
  }

  DocumentReference? _pedMesaCompleta;
  DocumentReference? get pedMesaCompleta => _pedMesaCompleta;
  set pedMesaCompleta(DocumentReference? value) {
    _pedMesaCompleta = value;
  }

  int _qtdCarrinho = 0;
  int get qtdCarrinho => _qtdCarrinho;
  set qtdCarrinho(int value) {
    _qtdCarrinho = value;
  }

  String _formaPG = 'Dinheiro';
  String get formaPG => _formaPG;
  set formaPG(String value) {
    _formaPG = value;
  }

  DateTime? _dataPagamento;
  DateTime? get dataPagamento => _dataPagamento;
  set dataPagamento(DateTime? value) {
    _dataPagamento = value;
  }
}
