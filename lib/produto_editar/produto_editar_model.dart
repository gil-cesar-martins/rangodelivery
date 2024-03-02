import '/flutter_flow/flutter_flow_util.dart';
import 'produto_editar_widget.dart' show ProdutoEditarWidget;
import 'package:flutter/material.dart';

class ProdutoEditarModel extends FlutterFlowModel<ProdutoEditarWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for TextFieldEditarNome widget.
  FocusNode? textFieldEditarNomeFocusNode;
  TextEditingController? textFieldEditarNomeController;
  String? Function(BuildContext, String?)?
      textFieldEditarNomeControllerValidator;
  // State field(s) for TextFieldEditarCategoria widget.
  FocusNode? textFieldEditarCategoriaFocusNode;
  TextEditingController? textFieldEditarCategoriaController;
  String? Function(BuildContext, String?)?
      textFieldEditarCategoriaControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldEditarNomeFocusNode?.dispose();
    textFieldEditarNomeController?.dispose();

    textFieldEditarCategoriaFocusNode?.dispose();
    textFieldEditarCategoriaController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
