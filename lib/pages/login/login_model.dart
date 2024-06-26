import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
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
      return 'Field is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
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
      return 'Field is required';
    }

    if (val.length < 8) {
      return 'Requires at least 8 characters.';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (GET USER BY ID)] action in Button widget.
  ApiCallResponse? getUserByIdResponse;
  // Stores action output result for [Backend Call - API (GET CODE BY ID)] action in Button widget.
  ApiCallResponse? getCodeByIdResponse;
  // Stores action output result for [Backend Call - API (GET APPOINTMENT BY USER ID)] action in Button widget.
  ApiCallResponse? getAppointmentByUserIdResponse;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    textFieldEmailControllerValidator = _textFieldEmailControllerValidator;
    textFieldPassVisibility = false;
    textFieldPassControllerValidator = _textFieldPassControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldEmailFocusNode?.dispose();
    textFieldEmailController?.dispose();

    textFieldPassFocusNode?.dispose();
    textFieldPassController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
