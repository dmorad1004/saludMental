import '/flutter_flow/flutter_flow_util.dart';
import 'email_to_recover_widget.dart' show EmailToRecoverWidget;
import 'package:flutter/material.dart';

class EmailToRecoverModel extends FlutterFlowModel<EmailToRecoverWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField_email widget.
  FocusNode? textFieldEmailFocusNode;
  TextEditingController? textFieldEmailController;
  String? Function(BuildContext, String?)? textFieldEmailControllerValidator;
  String? _textFieldEmailControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return "El campo es requerido";
    }

    if (val.length < 8) {
      return "Se requieren al menos 8 caracteres";
    }

    return null;
  }

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    textFieldEmailControllerValidator = _textFieldEmailControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldEmailFocusNode?.dispose();
    textFieldEmailController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
