import '/flutter_flow/flutter_flow_util.dart';
import 'cad_mesas_widget.dart' show CadMesasWidget;
import 'package:flutter/material.dart';

class CadMesasModel extends FlutterFlowModel<CadMesasWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextFieldNumMesa widget.
  FocusNode? textFieldNumMesaFocusNode;
  TextEditingController? textFieldNumMesaController;
  String? Function(BuildContext, String?)? textFieldNumMesaControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldNumMesaFocusNode?.dispose();
    textFieldNumMesaController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
