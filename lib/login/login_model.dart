import '/flutter_flow/flutter_flow_util.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for TextFieldLoginEmail widget.
  FocusNode? textFieldLoginEmailFocusNode;
  TextEditingController? textFieldLoginEmailController;
  String? Function(BuildContext, String?)?
      textFieldLoginEmailControllerValidator;
  // State field(s) for TextFieldLoginSenha widget.
  FocusNode? textFieldLoginSenhaFocusNode;
  TextEditingController? textFieldLoginSenhaController;
  late bool textFieldLoginSenhaVisibility;
  String? Function(BuildContext, String?)?
      textFieldLoginSenhaControllerValidator;
  // State field(s) for TextFieldCadEmail widget.
  FocusNode? textFieldCadEmailFocusNode;
  TextEditingController? textFieldCadEmailController;
  String? Function(BuildContext, String?)? textFieldCadEmailControllerValidator;
  // State field(s) for TextFieldCadSenha1 widget.
  FocusNode? textFieldCadSenha1FocusNode;
  TextEditingController? textFieldCadSenha1Controller;
  late bool textFieldCadSenha1Visibility;
  String? Function(BuildContext, String?)?
      textFieldCadSenha1ControllerValidator;
  // State field(s) for TextFieldCadSenha2 widget.
  FocusNode? textFieldCadSenha2FocusNode;
  TextEditingController? textFieldCadSenha2Controller;
  late bool textFieldCadSenha2Visibility;
  String? Function(BuildContext, String?)?
      textFieldCadSenha2ControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    textFieldLoginSenhaVisibility = false;
    textFieldCadSenha1Visibility = false;
    textFieldCadSenha2Visibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    textFieldLoginEmailFocusNode?.dispose();
    textFieldLoginEmailController?.dispose();

    textFieldLoginSenhaFocusNode?.dispose();
    textFieldLoginSenhaController?.dispose();

    textFieldCadEmailFocusNode?.dispose();
    textFieldCadEmailController?.dispose();

    textFieldCadSenha1FocusNode?.dispose();
    textFieldCadSenha1Controller?.dispose();

    textFieldCadSenha2FocusNode?.dispose();
    textFieldCadSenha2Controller?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
