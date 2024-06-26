import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'symptom_detail_model.dart';
export 'symptom_detail_model.dart';

import 'package:keraltyApp/app_state.dart';



class SymptomDetailWidget extends StatefulWidget {
  const SymptomDetailWidget({super.key});

  @override
  State<SymptomDetailWidget> createState() => _SymptomDetailWidgetState();
}

class _SymptomDetailWidgetState extends State<SymptomDetailWidget> {
  late SymptomDetailModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SymptomDetailModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await actions.lockOrientation();
      _model.getReportByIdRessponse = await GetSymptomReportsByIdCall.call(
        id: FFAppState().reportDetailId,
      );
      setState(() {
        FFAppState().SDate = GetSymptomReportsByIdCall.date(
          (_model.getReportByIdRessponse?.jsonBody ?? ''),
        )!;
        FFAppState().SAlteracionDiaria =
            GetSymptomReportsByIdCall.alteracionDiaria(
          (_model.getReportByIdRessponse?.jsonBody ?? ''),
        )!;
        FFAppState().SSolicitaComunicacion =
            GetSymptomReportsByIdCall.solicitaComunicacion(
          (_model.getReportByIdRessponse?.jsonBody ?? ''),
        )!;
        FFAppState().SPersistente = GetSymptomReportsByIdCall.persistente(
          (_model.getReportByIdRessponse?.jsonBody ?? ''),
        )!;
        FFAppState().SImage = GetSymptomReportsByIdCall.image(
          (_model.getReportByIdRessponse?.jsonBody ?? ''),
        ).toString();
        FFAppState().SBroteId = GetSymptomReportsByIdCall.broteId(
          (_model.getReportByIdRessponse?.jsonBody ?? ''),
        )!;
        FFAppState().SMolestiaGeneralGrado =
            GetSymptomReportsByIdCall.molestiaGeneralGrado(
          (_model.getReportByIdRessponse?.jsonBody ?? ''),
        )!;
        FFAppState().SMolestiaGeneralId =
            GetSymptomReportsByIdCall.molestiaGeneralId(
          (_model.getReportByIdRessponse?.jsonBody ?? ''),
        )!;
        FFAppState().SMolestiaGeneral =
            GetSymptomReportsByIdCall.molestiaGeneral(
          (_model.getReportByIdRessponse?.jsonBody ?? ''),
        )!;
        FFAppState().SMolestiaSitioGrado =
            GetSymptomReportsByIdCall.molestiaSitioGrado(
          (_model.getReportByIdRessponse?.jsonBody ?? ''),
        )!;
        FFAppState().SMolestiaSitioId =
            GetSymptomReportsByIdCall.molestiaSitioId(
          (_model.getReportByIdRessponse?.jsonBody ?? ''),
        )!;
        FFAppState().SMolestiaSitio = GetSymptomReportsByIdCall.molestiaSitio(
          (_model.getReportByIdRessponse?.jsonBody ?? ''),
        )!;
        FFAppState().sImagePath = GetSymptomReportsByIdCall.image(
          (_model.getReportByIdRessponse?.jsonBody ?? ''),
        ).toString();
      });
    });

    _model.textFieldTimeController ??=
        TextEditingController(text: FFAppState().SDate);
    _model.textFieldTimeFocusNode ??= FocusNode();

    _model.textFieldCustomSitioSymptomController ??= TextEditingController();
    _model.textFieldCustomSitioSymptomFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).secondary,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30.0,
          borderWidth: 1.0,
          buttonSize: 60.0,
          icon: const Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
            size: 30.0,
          ),
          onPressed: () async {
            context.pop();
          },
        ),
        title: Text(
          'Mi historial de síntomas',
          style: FlutterFlowTheme.of(context).headlineMedium.override(
                fontFamily: 'Ancizar sans',
                color: Colors.white,
                fontSize: 22.0,
                useGoogleFonts: false,
              ),
        ),
        actions: const [],
        centerTitle: false,
        elevation: 2.0,
      ),
      body: Align(
        alignment: const AlignmentDirectional(0.0, 0.0),
        child: Container(
          width: MediaQuery.sizeOf(context).width * 1.0,
          height: MediaQuery.sizeOf(context).height * 1.0,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                FlutterFlowTheme.of(context).blancoFondo,
                FlutterFlowTheme.of(context).azulMedio,
                FlutterFlowTheme.of(context).azulOscuroFondo
              ],
              stops: const [0.0, 0.5, 1.0],
              begin: const AlignmentDirectional(0.0, -1.0),
              end: const AlignmentDirectional(0, 1.0),
            ),
            shape: BoxShape.rectangle,
          ),
          alignment: const AlignmentDirectional(0.0, 0.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Align(
                  alignment: const AlignmentDirectional(0.0, -1.0),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: MediaQuery.sizeOf(context).height * 0.88,
                    decoration: const BoxDecoration(),
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: MediaQuery.sizeOf(context).height * 0.88,
                            decoration: const BoxDecoration(),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Opacity(
                                        opacity: 0.0,
                                        child: Align(
                                          alignment:
                                              const AlignmentDirectional(0.0, 0.0),
                                          child: FlutterFlowIconButton(
                                            borderRadius: 20.0,
                                            borderWidth: 1.0,
                                            buttonSize:
                                                MediaQuery.sizeOf(context)
                                                        .width *
                                                    0.1,
                                            icon: Icon(
                                              FFIcons.kchevronLeft,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                              size: 24.0,
                                            ),
                                            onPressed: () async {
                                              context.safePop();
                                            },
                                          ),
                                        ),
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 25.0, 0.0, 0.0),
                                              child: Text(
                                                'Reporte ${FFAppState().Sindice.toString()}',
                                                textAlign: TextAlign.center,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .displayLarge,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(1.0, 0.0),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 20.0, 20.0, 0.0),
                                          child: Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.1,
                                            height: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.1,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                              shape: BoxShape.circle,
                                            ),
                                            child: Align(
                                              alignment: const AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Icon(
                                                FFIcons.kuserInjured,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .tertiary,
                                                size: 23.0,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    height: MediaQuery.sizeOf(context).height *
                                        0.88,
                                    decoration: const BoxDecoration(),
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: SingleChildScrollView(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: AnimatedContainer(
                                              duration:
                                                  const Duration(milliseconds: 100),
                                              curve: Curves.easeInOut,
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.85,
                                              height: MediaQuery.sizeOf(context)
                                                      .height *
                                                  0.75,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .tertiary,
                                                border: Border.all(
                                                  color: const Color(0x66C2C4B6),
                                                  width: 1.0,
                                                ),
                                              ),
                                              alignment: const AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Align(
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: SingleChildScrollView(
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Container(
                                                          width:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .width *
                                                                  0.8,
                                                          height:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .height *
                                                                  0.7,
                                                          decoration:
                                                              const BoxDecoration(),
                                                          alignment:
                                                              const AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child:
                                                                SingleChildScrollView(
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceAround,
                                                                children: [
                                                                  Align(
                                                                    alignment:
                                                                        const AlignmentDirectional(
                                                                            0.0,
                                                                            1.0),
                                                                    child:
                                                                        Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          8.0,
                                                                          0.0,
                                                                          8.0,
                                                                          0.0),
                                                                      child:
                                                                          SizedBox(
                                                                        width: MediaQuery.sizeOf(context).width *
                                                                            0.7,
                                                                        child:
                                                                            TextFormField(
                                                                          controller:
                                                                              _model.textFieldTimeController,
                                                                          focusNode:
                                                                              _model.textFieldTimeFocusNode,
                                                                          obscureText:
                                                                              false,
                                                                          decoration:
                                                                              InputDecoration(
                                                                            labelText:
                                                                                'Fecha de inicio de los sintomas',
                                                                            labelStyle: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                  fontFamily: 'Ancizar sans',
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                  fontSize: 16.0,
                                                                                  useGoogleFonts: false,
                                                                                ),
                                                                            hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                  fontFamily: 'Ancizar sans',
                                                                                  fontSize: 15.0,
                                                                                  useGoogleFonts: false,
                                                                                  lineHeight: 2.5,
                                                                                ),
                                                                            enabledBorder:
                                                                                UnderlineInputBorder(
                                                                              borderSide: BorderSide(
                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                width: 2.0,
                                                                              ),
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                            ),
                                                                            focusedBorder:
                                                                                UnderlineInputBorder(
                                                                              borderSide: BorderSide(
                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                width: 2.0,
                                                                              ),
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                            ),
                                                                            errorBorder:
                                                                                UnderlineInputBorder(
                                                                              borderSide: BorderSide(
                                                                                color: FlutterFlowTheme.of(context).error,
                                                                                width: 2.0,
                                                                              ),
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                            ),
                                                                            focusedErrorBorder:
                                                                                UnderlineInputBorder(
                                                                              borderSide: BorderSide(
                                                                                color: FlutterFlowTheme.of(context).error,
                                                                                width: 2.0,
                                                                              ),
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                            ),
                                                                          ),
                                                                          style:
                                                                              FlutterFlowTheme.of(context).bodyMedium,
                                                                          textAlign:
                                                                              TextAlign.center,
                                                                          maxLength:
                                                                              24,
                                                                          maxLengthEnforcement:
                                                                              MaxLengthEnforcement.enforced,
                                                                          buildCounter: (context, {required currentLength, required isFocused, maxLength}) =>
                                                                              null,
                                                                          keyboardType:
                                                                              TextInputType.datetime,
                                                                          validator: _model
                                                                              .textFieldTimeControllerValidator
                                                                              .asValidator(context),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            20.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      '¿Ha tenido molestias a nivel del sitio de vacunación?',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Ancizar sans',
                                                                            fontSize:
                                                                                16.0,
                                                                            useGoogleFonts:
                                                                                false,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                        const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          20.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Align(
                                                                            alignment:
                                                                                const AlignmentDirectional(0.0, 0.0),
                                                                            child:
                                                                                FlutterFlowRadioButton(
                                                                              options: [
                                                                                'Si',
                                                                                'No'
                                                                              ].toList(),
                                                                              onChanged: true
                                                                                  ? null
                                                                                  : (val) async {
                                                                                      setState(() {});
                                                                                      setState(() {
                                                                                        _model.dropDownSitioValueController?.value = 0;
                                                                                      });
                                                                                      setState(() {
                                                                                        _model.dropDownSitioGravedadValueController?.value = 0;
                                                                                      });
                                                                                    },
                                                                              controller: _model.radioButtonMolestiaSitioValueController ??= FormFieldController<String>(FFAppState().SMolestiaSitio == true ? 'Si' : 'No'),
                                                                              optionHeight: 32.0,
                                                                              textStyle: FlutterFlowTheme.of(context).labelMedium,
                                                                              selectedTextStyle: FlutterFlowTheme.of(context).bodyMedium,
                                                                              buttonPosition: RadioButtonPosition.left,
                                                                              direction: Axis.horizontal,
                                                                              radioButtonColor: FlutterFlowTheme.of(context).primary,
                                                                              inactiveRadioButtonColor: FlutterFlowTheme.of(context).secondaryText,
                                                                              toggleable: true,
                                                                              horizontalAlignment: WrapAlignment.start,
                                                                              verticalAlignment: WrapCrossAlignment.start,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  if (_model
                                                                          .radioButtonMolestiaSitioValue ==
                                                                      'Si')
                                                                    Align(
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child: FlutterFlowDropDown<
                                                                          int>(
                                                                        controller:
                                                                            _model.dropDownSitioValueController ??=
                                                                                FormFieldController<int>(
                                                                          _model.dropDownSitioValue ??=
                                                                              FFAppState().SMolestiaSitioId,
                                                                        ),
                                                                        options:
                                                                            List<int>.from([
                                                                          1,
                                                                          2,
                                                                          3,
                                                                          4,
                                                                          5,
                                                                          6,
                                                                          0
                                                                        ]),
                                                                        optionLabels: const [
                                                                          'Dolor en el sitio de la inyección',
                                                                          'Enrojecimiento en el sitio de inyección',
                                                                          'Hinchazón del sitio de inyección',
                                                                          'Endurecimiento del sitio de inyección',
                                                                          'Picazón ',
                                                                          'Otro',
                                                                          'No aplica'
                                                                        ],
                                                                        onChanged:
                                                                            (val) =>
                                                                                setState(() => _model.dropDownSitioValue = val),
                                                                        width: MediaQuery.sizeOf(context).width *
                                                                            0.7,
                                                                        height:
                                                                            50.0,
                                                                        textStyle:
                                                                            FlutterFlowTheme.of(context).bodyMedium,
                                                                        hintText:
                                                                            'Especifique cuál molestia:',
                                                                        icon:
                                                                            Icon(
                                                                          Icons
                                                                              .keyboard_arrow_down_rounded,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          size:
                                                                              24.0,
                                                                        ),
                                                                        fillColor:
                                                                            FlutterFlowTheme.of(context).blancoFondo,
                                                                        elevation:
                                                                            2.0,
                                                                        borderColor:
                                                                            FlutterFlowTheme.of(context).alternate,
                                                                        borderWidth:
                                                                            2.0,
                                                                        borderRadius:
                                                                            8.0,
                                                                        margin: const EdgeInsetsDirectional.fromSTEB(
                                                                            16.0,
                                                                            4.0,
                                                                            16.0,
                                                                            4.0),
                                                                        hidesUnderline:
                                                                            true,
                                                                        disabled:
                                                                            true,
                                                                        isOverButton:
                                                                            true,
                                                                        isSearchable:
                                                                            false,
                                                                        isMultiSelect:
                                                                            false,
                                                                      ),
                                                                    ),
                                                                  if (_model
                                                                          .radioButtonMolestiaSitioValue ==
                                                                      'Si')
                                                                    FlutterFlowDropDown<
                                                                        int>(
                                                                      controller: _model
                                                                              .dropDownSitioGravedadValueController ??=
                                                                          FormFieldController<
                                                                              int>(
                                                                        _model.dropDownSitioGravedadValue ??=
                                                                            FFAppState().SMolestiaSitioGrado,
                                                                      ),
                                                                      options: List<
                                                                          int>.from([
                                                                        1,
                                                                        2,
                                                                        3,
                                                                        4,
                                                                        0
                                                                      ]),
                                                                      optionLabels: const [
                                                                        'Grado 1: No interfiere con su actividad diaria habitual',
                                                                        'Grado 2: Algo de interferencia con la actividad que no requiere intervención médica',
                                                                        'Grado 3: Previene realizar las actividades habituales y requiere intervención médica',
                                                                        'Grado 4: Visita a Urgencias u hospitalización ',
                                                                        'No aplica'
                                                                      ],
                                                                      onChanged:
                                                                          (val) =>
                                                                              setState(() => _model.dropDownSitioGravedadValue = val),
                                                                      width: MediaQuery.sizeOf(context)
                                                                              .width *
                                                                          0.7,
                                                                      height:
                                                                          50.0,
                                                                      textStyle:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMedium,
                                                                      hintText:
                                                                          'Clasifique la molestia según los siguientes grados:',
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .keyboard_arrow_down_rounded,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                      fillColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .blancoFondo,
                                                                      elevation:
                                                                          2.0,
                                                                      borderColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .alternate,
                                                                      borderWidth:
                                                                          2.0,
                                                                      borderRadius:
                                                                          8.0,
                                                                      margin: const EdgeInsetsDirectional.fromSTEB(
                                                                          16.0,
                                                                          4.0,
                                                                          16.0,
                                                                          4.0),
                                                                      hidesUnderline:
                                                                          true,
                                                                      disabled:
                                                                          true,
                                                                      isOverButton:
                                                                          true,
                                                                      isSearchable:
                                                                          false,
                                                                      isMultiSelect:
                                                                          false,
                                                                    ),
                                                                  if ((_model.radioButtonMolestiaSitioValue ==
                                                                          'Si') &&
                                                                      (_model.dropDownSitioValue ==
                                                                          6))
                                                                    Align(
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              0.0,
                                                                              1.0),
                                                                      child:
                                                                          Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            8.0,
                                                                            0.0,
                                                                            8.0,
                                                                            0.0),
                                                                        child:
                                                                            SizedBox(
                                                                          width:
                                                                              MediaQuery.sizeOf(context).width * 0.7,
                                                                          child:
                                                                              TextFormField(
                                                                            controller:
                                                                                _model.textFieldCustomSitioSymptomController,
                                                                            focusNode:
                                                                                _model.textFieldCustomSitioSymptomFocusNode,
                                                                            obscureText:
                                                                                false,
                                                                            decoration:
                                                                                InputDecoration(
                                                                              labelText: 'Describe la molestia a nivel de sitio:',
                                                                              labelStyle: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                    fontFamily: 'Ancizar sans',
                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                    fontSize: 16.0,
                                                                                    useGoogleFonts: false,
                                                                                  ),
                                                                              hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                    fontFamily: 'Ancizar sans',
                                                                                    fontSize: 15.0,
                                                                                    useGoogleFonts: false,
                                                                                    lineHeight: 2.5,
                                                                                  ),
                                                                              enabledBorder: UnderlineInputBorder(
                                                                                borderSide: BorderSide(
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                  width: 2.0,
                                                                                ),
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                              ),
                                                                              focusedBorder: UnderlineInputBorder(
                                                                                borderSide: BorderSide(
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                  width: 2.0,
                                                                                ),
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                              ),
                                                                              errorBorder: UnderlineInputBorder(
                                                                                borderSide: BorderSide(
                                                                                  color: FlutterFlowTheme.of(context).error,
                                                                                  width: 2.0,
                                                                                ),
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                              ),
                                                                              focusedErrorBorder: UnderlineInputBorder(
                                                                                borderSide: BorderSide(
                                                                                  color: FlutterFlowTheme.of(context).error,
                                                                                  width: 2.0,
                                                                                ),
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                              ),
                                                                            ),
                                                                            style:
                                                                                FlutterFlowTheme.of(context).bodyMedium,
                                                                            textAlign:
                                                                                TextAlign.center,
                                                                            maxLength:
                                                                                24,
                                                                            maxLengthEnforcement:
                                                                                MaxLengthEnforcement.enforced,
                                                                            buildCounter: (context, {required currentLength, required isFocused, maxLength}) =>
                                                                                null,
                                                                            keyboardType:
                                                                                TextInputType.datetime,
                                                                            validator:
                                                                                _model.textFieldCustomSitioSymptomControllerValidator.asValidator(context),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  Align(
                                                                    alignment:
                                                                        const AlignmentDirectional(
                                                                            -1.0,
                                                                            0.0),
                                                                    child:
                                                                        Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          20.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Text(
                                                                        '¿Ha tenido molestias generales? ',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Ancizar sans',
                                                                              fontSize: 16.0,
                                                                              useGoogleFonts: false,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                        const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          20.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          FlutterFlowRadioButton(
                                                                            options:
                                                                                [
                                                                              'Si',
                                                                              'No'
                                                                            ].toList(),
                                                                            onChanged: true
                                                                                ? null
                                                                                : (val) => setState(() {}),
                                                                            controller: _model.radioButtonMolestiaGeneralValueController ??= FormFieldController<String>(FFAppState().SMolestiaGeneral == true
                                                                                ? 'Si'
                                                                                : 'No'),
                                                                            optionHeight:
                                                                                32.0,
                                                                            textStyle:
                                                                                FlutterFlowTheme.of(context).labelMedium,
                                                                            selectedTextStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium,
                                                                            buttonPosition:
                                                                                RadioButtonPosition.left,
                                                                            direction:
                                                                                Axis.horizontal,
                                                                            radioButtonColor:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            inactiveRadioButtonColor:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            toggleable:
                                                                                false,
                                                                            horizontalAlignment:
                                                                                WrapAlignment.start,
                                                                            verticalAlignment:
                                                                                WrapCrossAlignment.start,
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  if (_model
                                                                          .radioButtonMolestiaGeneralValue ==
                                                                      'Si')
                                                                    Align(
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child: FlutterFlowDropDown<
                                                                          int>(
                                                                        controller:
                                                                            _model.dropDownGeneralValueController ??=
                                                                                FormFieldController<int>(
                                                                          _model.dropDownGeneralValue ??=
                                                                              FFAppState().SMolestiaGeneralId,
                                                                        ),
                                                                        options:
                                                                            List<int>.from([
                                                                          1,
                                                                          2,
                                                                          3,
                                                                          4,
                                                                          5,
                                                                          6,
                                                                          7,
                                                                          8,
                                                                          9,
                                                                          10,
                                                                          11,
                                                                          12,
                                                                          13,
                                                                          0
                                                                        ]),
                                                                        optionLabels: const [
                                                                          '\tDolor muscular',
                                                                          'Dolor de cabeza',
                                                                          'Fatiga',
                                                                          'Náuseas/vómito ',
                                                                          'Escalofríos',
                                                                          'Fiebre (Temperatura mayor a 38.8°C)',
                                                                          'Crecimiento de ganglios linfáticos en cuello',
                                                                          'Crecimiento de ganglios linfáticos en axila',
                                                                          'Crecimiento de ganglios linfáticos en Ingle',
                                                                          'Dificultad para respirar',
                                                                          'Hinchazón de los labios, lengua o boca',
                                                                          'Convulsiones',
                                                                          'Brote',
                                                                          'No aplica'
                                                                        ],
                                                                        onChanged:
                                                                            (val) =>
                                                                                setState(() => _model.dropDownGeneralValue = val),
                                                                        width: MediaQuery.sizeOf(context).width *
                                                                            0.7,
                                                                        height:
                                                                            50.0,
                                                                        textStyle:
                                                                            FlutterFlowTheme.of(context).bodyMedium,
                                                                        hintText:
                                                                            'Especifique cuál molestia:',
                                                                        icon:
                                                                            Icon(
                                                                          Icons
                                                                              .keyboard_arrow_down_rounded,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          size:
                                                                              24.0,
                                                                        ),
                                                                        fillColor:
                                                                            FlutterFlowTheme.of(context).blancoFondo,
                                                                        elevation:
                                                                            2.0,
                                                                        borderColor:
                                                                            FlutterFlowTheme.of(context).alternate,
                                                                        borderWidth:
                                                                            2.0,
                                                                        borderRadius:
                                                                            8.0,
                                                                        margin: const EdgeInsetsDirectional.fromSTEB(
                                                                            16.0,
                                                                            4.0,
                                                                            16.0,
                                                                            4.0),
                                                                        hidesUnderline:
                                                                            true,
                                                                        disabled:
                                                                            true,
                                                                        isOverButton:
                                                                            true,
                                                                        isSearchable:
                                                                            false,
                                                                        isMultiSelect:
                                                                            false,
                                                                      ),
                                                                    ),
                                                                  if (_model
                                                                          .radioButtonMolestiaGeneralValue ==
                                                                      'Si')
                                                                    Align(
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child: FlutterFlowDropDown<
                                                                          int>(
                                                                        controller:
                                                                            _model.dropDownGeneralGravedadValueController ??=
                                                                                FormFieldController<int>(
                                                                          _model.dropDownGeneralGravedadValue ??=
                                                                              FFAppState().SMolestiaGeneralGrado,
                                                                        ),
                                                                        options:
                                                                            List<int>.from([
                                                                          1,
                                                                          2,
                                                                          3,
                                                                          4,
                                                                          0
                                                                        ]),
                                                                        optionLabels: const [
                                                                          'Grado 1: No interfiere con su actividad diaria habitual',
                                                                          'Grado 2: Algo de interferencia con la actividad que no requiere intervención médica',
                                                                          'Grado 3: Previene realizar las actividades habituales y requiere intervención médica',
                                                                          'Grado 4: Visita a Urgencias u hospitalización ',
                                                                          'No aplica'
                                                                        ],
                                                                        onChanged:
                                                                            (val) =>
                                                                                setState(() => _model.dropDownGeneralGravedadValue = val),
                                                                        width: MediaQuery.sizeOf(context).width *
                                                                            0.7,
                                                                        height:
                                                                            50.0,
                                                                        textStyle:
                                                                            FlutterFlowTheme.of(context).bodyMedium,
                                                                        hintText:
                                                                            'Clasifique la molestia según los siguientes grados:',
                                                                        icon:
                                                                            Icon(
                                                                          Icons
                                                                              .keyboard_arrow_down_rounded,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          size:
                                                                              24.0,
                                                                        ),
                                                                        fillColor:
                                                                            FlutterFlowTheme.of(context).blancoFondo,
                                                                        elevation:
                                                                            2.0,
                                                                        borderColor:
                                                                            FlutterFlowTheme.of(context).alternate,
                                                                        borderWidth:
                                                                            2.0,
                                                                        borderRadius:
                                                                            8.0,
                                                                        margin: const EdgeInsetsDirectional.fromSTEB(
                                                                            16.0,
                                                                            4.0,
                                                                            16.0,
                                                                            4.0),
                                                                        hidesUnderline:
                                                                            true,
                                                                        disabled:
                                                                            true,
                                                                        isOverButton:
                                                                            true,
                                                                        isSearchable:
                                                                            false,
                                                                        isMultiSelect:
                                                                            false,
                                                                      ),
                                                                    ),
                                                                  if ((_model.dropDownGeneralValue ==
                                                                          13) &&
                                                                      (_model.radioButtonMolestiaGeneralValue ==
                                                                          'Si'))
                                                                    Align(
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child: FlutterFlowDropDown<
                                                                          int>(
                                                                        controller:
                                                                            _model.dropDownBroteValueController ??=
                                                                                FormFieldController<int>(
                                                                          _model.dropDownBroteValue ??=
                                                                              FFAppState().SBroteId,
                                                                        ),
                                                                        options:
                                                                            List<int>.from([
                                                                          1,
                                                                          2,
                                                                          3,
                                                                          0
                                                                        ]),
                                                                        optionLabels: const [
                                                                          'Áreas de piel inflamada y elevadas, rodeada de enrojecimiento, generalmente asociadas a picazón ',
                                                                          'Áreas de enrojecimiento, rodeadas de un anillo de piel clara y con borde enrojecido',
                                                                          'Áreas de piel inflamada, seca y con picazón, puede haber vejigas ',
                                                                          'No aplica'
                                                                        ],
                                                                        onChanged:
                                                                            (val) =>
                                                                                setState(() => _model.dropDownBroteValue = val),
                                                                        width: MediaQuery.sizeOf(context).width *
                                                                            0.7,
                                                                        height:
                                                                            50.0,
                                                                        textStyle:
                                                                            FlutterFlowTheme.of(context).bodyMedium,
                                                                        hintText:
                                                                            'Marque si el brote luce como algunos de los siguientes: ',
                                                                        icon:
                                                                            Icon(
                                                                          Icons
                                                                              .keyboard_arrow_down_rounded,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          size:
                                                                              24.0,
                                                                        ),
                                                                        fillColor:
                                                                            FlutterFlowTheme.of(context).blancoFondo,
                                                                        elevation:
                                                                            2.0,
                                                                        borderColor:
                                                                            FlutterFlowTheme.of(context).alternate,
                                                                        borderWidth:
                                                                            2.0,
                                                                        borderRadius:
                                                                            8.0,
                                                                        margin: const EdgeInsetsDirectional.fromSTEB(
                                                                            16.0,
                                                                            4.0,
                                                                            16.0,
                                                                            4.0),
                                                                        hidesUnderline:
                                                                            true,
                                                                        disabled:
                                                                            true,
                                                                        isOverButton:
                                                                            true,
                                                                        isSearchable:
                                                                            false,
                                                                        isMultiSelect:
                                                                            false,
                                                                      ),
                                                                    ),
                                                                  if (FFAppState()
                                                                              .SImage !=
                                                                          '')
                                                                    Align(
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          InkWell(
                                                                        splashColor:
                                                                            Colors.transparent,
                                                                        focusColor:
                                                                            Colors.transparent,
                                                                        hoverColor:
                                                                            Colors.transparent,
                                                                        highlightColor:
                                                                            Colors.transparent,
                                                                        onTap:
                                                                            () async {
                                                                          await Navigator
                                                                              .push(
                                                                            context,
                                                                            PageTransition(
                                                                              type: PageTransitionType.fade,
                                                                              child: FlutterFlowExpandedImageView(
                                                                                image: Image.network(
                                                                                  FFAppState().sImagePath,
                                                                                  fit: BoxFit.contain,
                                                                                  alignment: const Alignment(0.0, 0.0),
                                                                                ),
                                                                                allowRotation: false,
                                                                                tag: FFAppState().sImagePath,
                                                                                useHeroAnimation: true,
                                                                              ),
                                                                            ),
                                                                          );
                                                                        },
                                                                        child:
                                                                            Hero(
                                                                          tag: FFAppState()
                                                                              .sImagePath,
                                                                          transitionOnUserGestures:
                                                                              true,
                                                                          child:
                                                                              ClipRRect(
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                            child:
                                                                                Image.network(
                                                                              FFAppState().sImagePath,
                                                                              width: 300.0,
                                                                              height: 200.0,
                                                                              fit: BoxFit.cover,
                                                                              alignment: const Alignment(0.0, 0.0),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  Align(
                                                                    alignment:
                                                                        const AlignmentDirectional(
                                                                            -1.0,
                                                                            0.0),
                                                                    child:
                                                                        Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          20.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Text(
                                                                        '¿El síntoma es persistente? ',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Ancizar sans',
                                                                              fontSize: 16.0,
                                                                              useGoogleFonts: false,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                        const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          20.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          FlutterFlowRadioButton(
                                                                            options:
                                                                                [
                                                                              'Si',
                                                                              'No'
                                                                            ].toList(),
                                                                            onChanged: (val) =>
                                                                                setState(() {}),
                                                                            controller: _model.radioButtonPersistenteValueController ??= FormFieldController<String>(FFAppState().SPersistente == true
                                                                                ? 'Si'
                                                                                : 'No'),
                                                                            optionHeight:
                                                                                32.0,
                                                                            textStyle:
                                                                                FlutterFlowTheme.of(context).labelMedium,
                                                                            selectedTextStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium,
                                                                            buttonPosition:
                                                                                RadioButtonPosition.left,
                                                                            direction:
                                                                                Axis.horizontal,
                                                                            radioButtonColor:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            inactiveRadioButtonColor:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            toggleable:
                                                                                false,
                                                                            horizontalAlignment:
                                                                                WrapAlignment.start,
                                                                            verticalAlignment:
                                                                                WrapCrossAlignment.start,
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                        const AlignmentDirectional(
                                                                            -1.0,
                                                                            0.0),
                                                                    child:
                                                                        Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          20.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Text(
                                                                        'Desea que nos comuniquemos con usted para orientarlo respecto a este síntoma? ',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Ancizar sans',
                                                                              fontSize: 16.0,
                                                                              useGoogleFonts: false,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                        const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          20.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          FlutterFlowRadioButton(
                                                                            options:
                                                                                [
                                                                              'Si',
                                                                              'No'
                                                                            ].toList(),
                                                                            onChanged: (val) =>
                                                                                setState(() {}),
                                                                            controller: _model.radioButtonComunicarValueController ??= FormFieldController<String>(FFAppState().SSolicitaComunicacion == true
                                                                                ? 'Si'
                                                                                : 'No'),
                                                                            optionHeight:
                                                                                32.0,
                                                                            textStyle:
                                                                                FlutterFlowTheme.of(context).labelMedium,
                                                                            selectedTextStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium,
                                                                            buttonPosition:
                                                                                RadioButtonPosition.left,
                                                                            direction:
                                                                                Axis.horizontal,
                                                                            radioButtonColor:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            inactiveRadioButtonColor:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            toggleable:
                                                                                false,
                                                                            horizontalAlignment:
                                                                                WrapAlignment.start,
                                                                            verticalAlignment:
                                                                                WrapCrossAlignment.start,
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                        const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        FlutterFlowDropDown<
                                                                            int>(
                                                                      controller: _model
                                                                              .dropDownActividadDiariaValueController ??=
                                                                          FormFieldController<
                                                                              int>(
                                                                        _model.dropDownActividadDiariaValue ??=
                                                                            FFAppState().SAlteracionDiaria,
                                                                      ),
                                                                      options: List<
                                                                          int>.from([
                                                                        1,
                                                                        2,
                                                                        3,
                                                                        4,
                                                                        5
                                                                      ]),
                                                                      optionLabels: const [
                                                                        '\tSí, pero no requerí asistencia médica',
                                                                        'Sí y requerí asistencia médica (por ejemplo, por el personal del equipo)',
                                                                        'Sí, tuve que ir a urgencias o me tuvieron que hospitalizar ',
                                                                        'Sí, tuve incapacidad',
                                                                        'Ninguna de las anteriores'
                                                                      ],
                                                                      onChanged:
                                                                          (val) =>
                                                                              setState(() => _model.dropDownActividadDiariaValue = val),
                                                                      width: MediaQuery.sizeOf(context)
                                                                              .width *
                                                                          0.7,
                                                                      height:
                                                                          60.0,
                                                                      textStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Ancizar sans',
                                                                            fontSize:
                                                                                13.0,
                                                                            useGoogleFonts:
                                                                                false,
                                                                          ),
                                                                      hintText:
                                                                          '\t¿Este síntoma generó una alteración en su actividad diaria habitual (estudios, trabajo, hogar)? ',
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .keyboard_arrow_down_rounded,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                      fillColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .blancoFondo,
                                                                      elevation:
                                                                          2.0,
                                                                      borderColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .alternate,
                                                                      borderWidth:
                                                                          2.0,
                                                                      borderRadius:
                                                                          8.0,
                                                                      margin: const EdgeInsetsDirectional.fromSTEB(
                                                                          16.0,
                                                                          4.0,
                                                                          16.0,
                                                                          4.0),
                                                                      hidesUnderline:
                                                                          true,
                                                                      disabled:
                                                                          true,
                                                                      isOverButton:
                                                                          true,
                                                                      isSearchable:
                                                                          false,
                                                                      isMultiSelect:
                                                                          false,
                                                                    ),
                                                                  ),
                                                                ]
                                                                    .divide(const SizedBox(
                                                                        height:
                                                                            20.0))
                                                                    .around(const SizedBox(
                                                                        height:
                                                                            20.0)),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                1.0,
                                                        height:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .height *
                                                                0.05,
                                                        decoration:
                                                            const BoxDecoration(),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ].divide(const SizedBox(height: 25.0)),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
