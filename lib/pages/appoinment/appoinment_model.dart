import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'appoinment_widget.dart' show AppoinmentWidget;
import 'package:flutter/material.dart';

class AppoinmentModel extends FlutterFlowModel<AppoinmentWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (GET APPOINTMENT BY USER ID)] action in Appoinment widget.
  ApiCallResponse? getAppointmentByUserResponse;
  // Stores action output result for [Backend Call - API (GET HOSPITAL BY ID)] action in Appoinment widget.
  ApiCallResponse? getHospitalByIdResponse;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();

    textFieldFocusNode4?.dispose();
    textController4?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
