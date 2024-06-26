import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'symptom_detail_widget.dart' show SymptomDetailWidget;
import 'package:flutter/material.dart';

class SymptomDetailModel extends FlutterFlowModel<SymptomDetailWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (GET SYMPTOM REPORTS BY  ID)] action in SymptomDetail widget.
  ApiCallResponse? getReportByIdRessponse;
  // State field(s) for TextField_time widget.
  FocusNode? textFieldTimeFocusNode;
  TextEditingController? textFieldTimeController;
  String? Function(BuildContext, String?)? textFieldTimeControllerValidator;
  // State field(s) for RadioButton_molestia_sitio widget.
  FormFieldController<String>? radioButtonMolestiaSitioValueController;
  // State field(s) for DropDown_sitio widget.
  int? dropDownSitioValue;
  FormFieldController<int>? dropDownSitioValueController;
  // State field(s) for DropDown_sitio_gravedad widget.
  int? dropDownSitioGravedadValue;
  FormFieldController<int>? dropDownSitioGravedadValueController;
  // State field(s) for TextField_custom_sitio_symptom widget.
  FocusNode? textFieldCustomSitioSymptomFocusNode;
  TextEditingController? textFieldCustomSitioSymptomController;
  String? Function(BuildContext, String?)?
      textFieldCustomSitioSymptomControllerValidator;
  // State field(s) for RadioButton_molestia_general widget.
  FormFieldController<String>? radioButtonMolestiaGeneralValueController;
  // State field(s) for DropDown_general widget.
  int? dropDownGeneralValue;
  FormFieldController<int>? dropDownGeneralValueController;
  // State field(s) for DropDown_general_gravedad widget.
  int? dropDownGeneralGravedadValue;
  FormFieldController<int>? dropDownGeneralGravedadValueController;
  // State field(s) for DropDown_brote widget.
  int? dropDownBroteValue;
  FormFieldController<int>? dropDownBroteValueController;
  // State field(s) for RadioButton_persistente widget.
  FormFieldController<String>? radioButtonPersistenteValueController;
  // State field(s) for RadioButton_comunicar widget.
  FormFieldController<String>? radioButtonComunicarValueController;
  // State field(s) for DropDown_actividad_diaria widget.
  int? dropDownActividadDiariaValue;
  FormFieldController<int>? dropDownActividadDiariaValueController;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldTimeFocusNode?.dispose();
    textFieldTimeController?.dispose();

    textFieldCustomSitioSymptomFocusNode?.dispose();
    textFieldCustomSitioSymptomController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  String? get radioButtonMolestiaSitioValue =>
      radioButtonMolestiaSitioValueController?.value;
  String? get radioButtonMolestiaGeneralValue =>
      radioButtonMolestiaGeneralValueController?.value;
  String? get radioButtonPersistenteValue =>
      radioButtonPersistenteValueController?.value;
  String? get radioButtonComunicarValue =>
      radioButtonComunicarValueController?.value;
}
