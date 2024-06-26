import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'symptoms_widget.dart' show SymptomsWidget;
import 'package:flutter/material.dart';

class SymptomsModel extends FlutterFlowModel<SymptomsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField_time widget.
  FocusNode? textFieldTimeFocusNode;
  TextEditingController? textFieldTimeController;
  String? Function(BuildContext, String?)? textFieldTimeControllerValidator;
  String? _textFieldTimeControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Ingresa una fecha';
    }

    return null;
  }

  DateTime? datePicked;
  // State field(s) for RadioButton_molestia_sitio widget.
  FormFieldController<String>? radioButtonMolestiaSitioValueController;
  // State field(s) for DropDown_sitio widget.
  int? dropDownSitioValue;
  FormFieldController<int>? dropDownSitioValueController;
  // State field(s) for TextField_open_sitio widget.
  FocusNode? textFieldOpenSitioFocusNode;
  TextEditingController? textFieldOpenSitioController;
  String? Function(BuildContext, String?)?
      textFieldOpenSitioControllerValidator;
  // State field(s) for DropDown_sitio_gravedad widget.
  int? dropDownSitioGravedadValue;
  FormFieldController<int>? dropDownSitioGravedadValueController;
  // State field(s) for DropDown_sitio_persistente widget.
  int? dropDownSitioPersistenteValue;
  FormFieldController<int>? dropDownSitioPersistenteValueController;
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  // State field(s) for DropDown_actividad_diaria_sitio widget.
  int? dropDownActividadDiariaSitioValue;
  FormFieldController<int>? dropDownActividadDiariaSitioValueController;
  // State field(s) for RadioButton_molestia_general widget.
  FormFieldController<String>? radioButtonMolestiaGeneralValueController;
  // State field(s) for DropDown_general widget.
  int? dropDownGeneralValue;
  FormFieldController<int>? dropDownGeneralValueController;
  // State field(s) for TextField_open_geneal widget.
  FocusNode? textFieldOpenGenealFocusNode;
  TextEditingController? textFieldOpenGenealController;
  String? Function(BuildContext, String?)?
      textFieldOpenGenealControllerValidator;
  // State field(s) for DropDown_general_gravedad widget.
  int? dropDownGeneralGravedadValue;
  FormFieldController<int>? dropDownGeneralGravedadValueController;
  // State field(s) for DropDown_brote widget.
  int? dropDownBroteValue;
  FormFieldController<int>? dropDownBroteValueController;
  // State field(s) for DropDown_general_persistente widget.
  int? dropDownGeneralPersistenteValue;
  FormFieldController<int>? dropDownGeneralPersistenteValueController;
  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  // State field(s) for DropDown_actividad_diaria_general widget.
  int? dropDownActividadDiariaGeneralValue;
  FormFieldController<int>? dropDownActividadDiariaGeneralValueController;
  // State field(s) for RadioButton_solicita_comunicacion widget.
  FormFieldController<String>? radioButtonSolicitaComunicacionValueController;
  // Stores action output result for [Backend Call - API (CREATE NEW SYMPTOM REPORT)] action in Button_send widget.
  ApiCallResponse? createSymptomResult;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    textFieldTimeControllerValidator = _textFieldTimeControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldTimeFocusNode?.dispose();
    textFieldTimeController?.dispose();

    textFieldOpenSitioFocusNode?.dispose();
    textFieldOpenSitioController?.dispose();

    textFieldOpenGenealFocusNode?.dispose();
    textFieldOpenGenealController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  String? get radioButtonMolestiaSitioValue =>
      radioButtonMolestiaSitioValueController?.value;
  String? get radioButtonMolestiaGeneralValue =>
      radioButtonMolestiaGeneralValueController?.value;
  String? get radioButtonSolicitaComunicacionValue =>
      radioButtonSolicitaComunicacionValueController?.value;
}
