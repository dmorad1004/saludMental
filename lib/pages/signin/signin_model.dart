import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'signin_widget.dart' show SigninWidget;
import 'package:flutter/material.dart';

class SigninModel extends FlutterFlowModel<SigninWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField_name widget.
  FocusNode? textFieldNameFocusNode;
  TextEditingController? textFieldNameController;
  String? Function(BuildContext, String?)? textFieldNameControllerValidator;
  String? _textFieldNameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo requerido';
    }

    if (val.length < 4) {
      return 'Requires at least 4 characters.';
    }

    return null;
  }

  // State field(s) for TextField_email widget.
  FocusNode? textFieldEmailFocusNode;
  TextEditingController? textFieldEmailController;
  String? Function(BuildContext, String?)? textFieldEmailControllerValidator;
  String? _textFieldEmailControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo requerido';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for TextField_phone widget.
  FocusNode? textFieldPhoneFocusNode;
  TextEditingController? textFieldPhoneController;
  String? Function(BuildContext, String?)? textFieldPhoneControllerValidator;
  String? _textFieldPhoneControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo requerido';
    }

    if (val.length < 7) {
      return 'Requires at least 7 characters.';
    }

    return null;
  }

  // State field(s) for TextField_pass widget.
  FocusNode? textFieldPassFocusNode;
  TextEditingController? textFieldPassController;
  late bool textFieldPassVisibility;
  String? Function(BuildContext, String?)? textFieldPassControllerValidator;
  String? _textFieldPassControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo requerido';
    }

    if (val.length < 8) {
      return 'Requires at least 8 characters.';
    }

    return null;
  }

  // State field(s) for TextField_pass_2 widget.
  FocusNode? textFieldPass2FocusNode;
  TextEditingController? textFieldPass2Controller;
  late bool textFieldPass2Visibility;
  String? Function(BuildContext, String?)? textFieldPass2ControllerValidator;
  String? _textFieldPass2ControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo requerido';
    }

    if (val.length < 8) {
      return 'Requires at least 8 characters.';
    }

    return null;
  }

  // State field(s) for TextField_code widget.
  FocusNode? textFieldCodeFocusNode;
  TextEditingController? textFieldCodeController;
  String? Function(BuildContext, String?)? textFieldCodeControllerValidator;
  String? _textFieldCodeControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo requerido';
    }

    if (val.length < 4) {
      return 'Requires at least 4 characters.';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (GET CODE BY CODE)] action in Button widget.
  ApiCallResponse? getCodeByCodeResponse;
  // Stores action output result for [Backend Call - API (GET USER BY CODE ID)] action in Button widget.
  ApiCallResponse? getUserByCodeResponse;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    textFieldNameControllerValidator = _textFieldNameControllerValidator;
    textFieldEmailControllerValidator = _textFieldEmailControllerValidator;
    textFieldPhoneControllerValidator = _textFieldPhoneControllerValidator;
    textFieldPassVisibility = false;
    textFieldPassControllerValidator = _textFieldPassControllerValidator;
    textFieldPass2Visibility = false;
    textFieldPass2ControllerValidator = _textFieldPass2ControllerValidator;
    textFieldCodeControllerValidator = _textFieldCodeControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldNameFocusNode?.dispose();
    textFieldNameController?.dispose();

    textFieldEmailFocusNode?.dispose();
    textFieldEmailController?.dispose();

    textFieldPhoneFocusNode?.dispose();
    textFieldPhoneController?.dispose();

    textFieldPassFocusNode?.dispose();
    textFieldPassController?.dispose();

    textFieldPass2FocusNode?.dispose();
    textFieldPass2Controller?.dispose();

    textFieldCodeFocusNode?.dispose();
    textFieldCodeController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
