import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'fluxo_caixa_widget.dart' show FluxoCaixaWidget;
import 'package:flutter/material.dart';

class FluxoCaixaModel extends FlutterFlowModel<FluxoCaixaWidget> {
  ///  Local state fields for this page.

  List<int> listaNumeros = [];
  void addToListaNumeros(int item) => listaNumeros.add(item);
  void removeFromListaNumeros(int item) => listaNumeros.remove(item);
  void removeAtIndexFromListaNumeros(int index) => listaNumeros.removeAt(index);
  void insertAtIndexInListaNumeros(int index, int item) =>
      listaNumeros.insert(index, item);
  void updateListaNumerosAtIndex(int index, Function(int) updateFn) =>
      listaNumeros[index] = updateFn(listaNumeros[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Stores action output result for [Firestore Query - Query a collection] action in DropDown widget.
  PedidoRecord? outLista;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
