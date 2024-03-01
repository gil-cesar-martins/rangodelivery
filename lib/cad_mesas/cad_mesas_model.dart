import '/flutter_flow/flutter_flow_util.dart';
import 'cad_mesas_widget.dart' show CadMesasWidget;
import 'package:flutter/material.dart';

class CadMesasModel extends FlutterFlowModel<CadMesasWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for TextFieldNumMesa widget.
  FocusNode? textFieldNumMesaFocusNode;
  TextEditingController? textFieldNumMesaController;
  String? Function(BuildContext, String?)? textFieldNumMesaControllerValidator;
  String? _textFieldNumMesaControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Digite um número válido';
    }

    if (val.isEmpty) {
      return 'Digite pelo menis um número';
    }
    if (val.length > 2) {
      return 'Máximo de mesas = 99';
    }

    return null;
  }

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    textFieldNumMesaControllerValidator = _textFieldNumMesaControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldNumMesaFocusNode?.dispose();
    textFieldNumMesaController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
