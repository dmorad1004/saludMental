import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'symptoms_model.dart';
export 'symptoms_model.dart';


import 'package:keraltyApp/app_state.dart';

class SymptomsWidget extends StatefulWidget {
  const SymptomsWidget({super.key});

  @override
  State<SymptomsWidget> createState() => _SymptomsWidgetState();
}

class _SymptomsWidgetState extends State<SymptomsWidget> {
  late SymptomsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SymptomsModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await actions.lockOrientation();
    });

    _model.textFieldTimeController ??= TextEditingController();
    _model.textFieldTimeFocusNode ??= FocusNode();

    _model.textFieldOpenSitioController ??= TextEditingController();
    _model.textFieldOpenSitioFocusNode ??= FocusNode();

    _model.textFieldOpenGenealController ??= TextEditingController();
    _model.textFieldOpenGenealFocusNode ??= FocusNode();
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

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
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
            'Mis síntomas',
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
                  FlutterFlowTheme.of(context).azulMedio,
                  FlutterFlowTheme.of(context).azulMedio
                ],
                stops: const [1.0, 1.0],
                begin: const AlignmentDirectional(1.0, -1.0),
                end: const AlignmentDirectional(-1.0, 1.0),
              ),
              shape: BoxShape.rectangle,
            ),
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: Align(
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Form(
                        key: _model.formKey,
                        autovalidateMode: AutovalidateMode.always,
                        child: Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Align(
                                  alignment:
                                      const AlignmentDirectional(0.0, 0.0),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    height:
                                        MediaQuery.sizeOf(context).height * 0.8,
                                    decoration: const BoxDecoration(),
                                    alignment:
                                        const AlignmentDirectional(0.0, 0.0),
                                    child: Align(
                                      alignment:
                                          const AlignmentDirectional(0.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(
                                                    0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Flexible(
                                                  child: Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                                  .fromSTEB(0.0,
                                                              25.0, 0.0, 0.0),
                                                      child: Text(
                                                        'Reportes',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .displayLarge,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          1.0, 0.0),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                                .fromSTEB(0.0,
                                                            20.0, 20.0, 0.0),
                                                    child: Container(
                                                      width: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.1,
                                                      height: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.1,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondary,
                                                        shape: BoxShape.circle,
                                                      ),
                                                      child: Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Icon(
                                                          FFIcons.kuserInjured,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .tertiary,
                                                          size: 23.0,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(
                                                    0.0, 0.0),
                                            child: Stack(
                                              alignment:
                                                  const AlignmentDirectional(
                                                      0.0, 0.0),
                                              children: [
                                                Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.59, 0.0),
                                                  child: FFButtonWidget(
                                                    onPressed: () async {
                                                      context.pushNamed(
                                                        'SymptomsHistory',
                                                        extra: <String,
                                                            dynamic>{
                                                          kTransitionInfoKey:
                                                              const TransitionInfo(
                                                            hasTransition: true,
                                                            transitionType:
                                                                PageTransitionType
                                                                    .fade,
                                                            duration: Duration(
                                                                milliseconds:
                                                                    0),
                                                          ),
                                                        },
                                                      );
                                                    },
                                                    text: 'Historial',
                                                    options: FFButtonOptions(
                                                      width: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.473,
                                                      height: MediaQuery.sizeOf(
                                                                  context)
                                                              .height *
                                                          0.04,
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                              24.0,
                                                              0.0,
                                                              24.0,
                                                              0.0),
                                                      iconPadding:
                                                          const EdgeInsetsDirectional
                                                                  .fromSTEB(0.0,
                                                              0.0, 0.0, 0.0),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondary,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .override(
                                                                fontFamily:
                                                                    'Ancizar sans',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .tertiary,
                                                                useGoogleFonts:
                                                                    false,
                                                              ),
                                                      elevation: 3.0,
                                                      borderSide:
                                                          const BorderSide(
                                                        color:
                                                            Colors.transparent,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              40.0),
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          -0.58, 0.0),
                                                  child: FFButtonWidget(
                                                    onPressed: () {
                                                      print(
                                                          'Button pressed ...');
                                                    },
                                                    text: 'Reportes',
                                                    options: FFButtonOptions(
                                                      width: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.425,
                                                      height: MediaQuery.sizeOf(
                                                                  context)
                                                              .height *
                                                          0.04,
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                              24.0,
                                                              0.0,
                                                              24.0,
                                                              0.0),
                                                      iconPadding:
                                                          const EdgeInsetsDirectional
                                                                  .fromSTEB(0.0,
                                                              0.0, 0.0, 0.0),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .tertiary,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .override(
                                                                fontFamily:
                                                                    'Ancizar sans',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondary,
                                                                useGoogleFonts:
                                                                    false,
                                                              ),
                                                      elevation: 3.0,
                                                      borderSide:
                                                          const BorderSide(
                                                        color:
                                                            Colors.transparent,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              40.0),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(
                                                    0.0, 0.0),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsetsDirectional
                                                          .fromSTEB(
                                                      0.0, 40.0, 0.0, 0.0),
                                              child: Container(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.8,
                                                height:
                                                    MediaQuery.sizeOf(context)
                                                            .height *
                                                        0.6,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .tertiary,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          40.0),
                                                ),
                                                alignment:
                                                    const AlignmentDirectional(
                                                        0.0, 0.0),
                                                child: Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: SingleChildScrollView(
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceAround,
                                                      children: [
                                                        Align(
                                                          alignment:
                                                              const AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceEvenly,
                                                            children: [
                                                              Expanded(
                                                                child: Align(
                                                                  alignment:
                                                                      const AlignmentDirectional(
                                                                          0.0,
                                                                          1.0),
                                                                  child:
                                                                      Padding(
                                                                    padding:
                                                                        const EdgeInsetsDirectional.fromSTEB(
                                                                            8.0,
                                                                            0.0,
                                                                            8.0,
                                                                            0.0),
                                                                    child:
                                                                        SizedBox(
                                                                      width: MediaQuery.sizeOf(context)
                                                                              .width *
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
                                                                          labelStyle: FlutterFlowTheme.of(context)
                                                                              .labelLarge
                                                                              .override(
                                                                                fontFamily: 'Ancizar sans',
                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                fontSize: 18.0,
                                                                                useGoogleFonts: false,
                                                                              ),
                                                                          hintStyle: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .override(
                                                                                fontFamily: 'Ancizar sans',
                                                                                fontSize: 15.0,
                                                                                useGoogleFonts: false,
                                                                                lineHeight: 2.5,
                                                                              ),
                                                                          enabledBorder:
                                                                              UnderlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                              width: 2.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                          focusedBorder:
                                                                              UnderlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                              width: 2.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                          errorBorder:
                                                                              UnderlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: FlutterFlowTheme.of(context).error,
                                                                              width: 2.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                          focusedErrorBorder:
                                                                              UnderlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: FlutterFlowTheme.of(context).error,
                                                                              width: 2.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium,
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        keyboardType:
                                                                            TextInputType.datetime,
                                                                        validator: _model
                                                                            .textFieldTimeControllerValidator
                                                                            .asValidator(context),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Align(
                                                                alignment:
                                                                    const AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                              .all(
                                                                          10.0),
                                                                  child:
                                                                      FFButtonWidget(
                                                                    onPressed:
                                                                        () async {
                                                                      final datePickedDate =
                                                                          await showDatePicker(
                                                                        context:
                                                                            context,
                                                                        initialDate:
                                                                            getCurrentTimestamp,
                                                                        firstDate:
                                                                            DateTime(1900),
                                                                        lastDate:
                                                                            DateTime(2050),
                                                                      );

                                                                      TimeOfDay?
                                                                          datePickedTime;
                                                                      if (datePickedDate !=
                                                                          null) {
                                                                        datePickedTime =
                                                                            await showTimePicker(
                                                                          context:
                                                                              context,
                                                                          initialTime:
                                                                              TimeOfDay.fromDateTime(getCurrentTimestamp),
                                                                        );
                                                                      }

                                                                      if (datePickedDate !=
                                                                              null &&
                                                                          datePickedTime !=
                                                                              null) {
                                                                        safeSetState(
                                                                            () {
                                                                          _model.datePicked =
                                                                              DateTime(
                                                                            datePickedDate.year,
                                                                            datePickedDate.month,
                                                                            datePickedDate.day,
                                                                            datePickedTime!.hour,
                                                                            datePickedTime.minute,
                                                                          );
                                                                        });
                                                                      }
                                                                      setState(
                                                                          () {
                                                                        _model
                                                                            .textFieldTimeController
                                                                            ?.text = dateTimeFormat(
                                                                          'y/M/d h:mm a',
                                                                          _model
                                                                              .datePicked,
                                                                          locale:
                                                                              FFLocalizations.of(context).languageCode,
                                                                        );
                                                                      });
                                                                    },
                                                                    text:
                                                                        'Fecha',
                                                                    options:
                                                                        FFButtonOptions(
                                                                      height:
                                                                          40.0,
                                                                      padding: const EdgeInsetsDirectional
                                                                              .fromSTEB(
                                                                          15.0,
                                                                          0.0,
                                                                          15.0,
                                                                          0.0),
                                                                      iconPadding: const EdgeInsetsDirectional
                                                                              .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .azulMedio,
                                                                      textStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleSmall
                                                                          .override(
                                                                            fontFamily:
                                                                                'Ancizar sans',
                                                                            fontSize:
                                                                                10.0,
                                                                            useGoogleFonts:
                                                                                false,
                                                                          ),
                                                                      elevation:
                                                                          3.0,
                                                                      borderSide:
                                                                          const BorderSide(
                                                                        color: Colors
                                                                            .transparent,
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                  20.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                          child: Text(
                                                            '¿Ha tenido molestias a nivel del sitio de vacunación?',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Ancizar sans',
                                                                  fontSize:
                                                                      18.0,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment:
                                                              const AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                    20.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Align(
                                                                  alignment:
                                                                      const AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      FlutterFlowRadioButton(
                                                                    options: [
                                                                      'Si',
                                                                      'No'
                                                                    ].toList(),
                                                                    onChanged:
                                                                        (val) async {
                                                                      setState(
                                                                          () {});
                                                                      setState(
                                                                          () {
                                                                        _model
                                                                            .dropDownSitioValueController
                                                                            ?.value = 0;
                                                                      });
                                                                      setState(
                                                                          () {
                                                                        _model
                                                                            .dropDownSitioGravedadValueController
                                                                            ?.value = 0;
                                                                      });
                                                                    },
                                                                    controller: _model
                                                                        .radioButtonMolestiaSitioValueController ??= FormFieldController<
                                                                            String>(
                                                                        'No'),
                                                                    optionHeight:
                                                                        32.0,
                                                                    textStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium,
                                                                    selectedTextStyle:
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMedium,
                                                                    buttonPosition:
                                                                        RadioButtonPosition
                                                                            .left,
                                                                    direction: Axis
                                                                        .horizontal,
                                                                    radioButtonColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                    inactiveRadioButtonColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                    toggleable:
                                                                        false,
                                                                    horizontalAlignment:
                                                                        WrapAlignment
                                                                            .start,
                                                                    verticalAlignment:
                                                                        WrapCrossAlignment
                                                                            .start,
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
                                                                    -1.0, 0.0),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                      20.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                              child: Text(
                                                                'Especifique cuál molestia:',
                                                                textAlign:
                                                                    TextAlign
                                                                        .justify,
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
                                                          ),
                                                        if (_model
                                                                .radioButtonMolestiaSitioValue ==
                                                            'Si')
                                                          Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child:
                                                                FlutterFlowDropDown<
                                                                    int>(
                                                              controller: _model
                                                                      .dropDownSitioValueController ??=
                                                                  FormFieldController<
                                                                          int>(
                                                                      null),
                                                              options: List<
                                                                  int>.from([
                                                                1,
                                                                2,
                                                                3,
                                                                4,
                                                                5,
                                                                6,
                                                                7
                                                              ]),
                                                              optionLabels: const [
                                                                'Dolor en el sitio de la inyección',
                                                                'Enrojecimiento en el sitio de inyección',
                                                                'Hinchazón del sitio de inyección',
                                                                'Endurecimiento del sitio de inyección',
                                                                'Picazón ',
                                                                'Otro',
                                                                'Ninguna'
                                                              ],
                                                              onChanged: (val) =>
                                                                  setState(() =>
                                                                      _model.dropDownSitioValue =
                                                                          val),
                                                              width: MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width *
                                                                  0.7,
                                                              height: 50.0,
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium,
                                                              hintText:
                                                                  'Especifique cuál molestia:',
                                                              icon: Icon(
                                                                Icons
                                                                    .keyboard_arrow_down_rounded,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                size: 24.0,
                                                              ),
                                                              fillColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .blancoFondo,
                                                              elevation: 2.0,
                                                              borderColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .alternate,
                                                              borderWidth: 2.0,
                                                              borderRadius: 8.0,
                                                              margin: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                  16.0,
                                                                  4.0,
                                                                  16.0,
                                                                  4.0),
                                                              hidesUnderline:
                                                                  true,
                                                              disabled: _model
                                                                      .radioButtonMolestiaSitioValue ==
                                                                  'No',
                                                              isOverButton:
                                                                  true,
                                                              isSearchable:
                                                                  false,
                                                              isMultiSelect:
                                                                  false,
                                                            ),
                                                          ),
                                                        Align(
                                                          alignment:
                                                              const AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: Container(
                                                            decoration:
                                                                const BoxDecoration(),
                                                            child: Visibility(
                                                              visible: (_model
                                                                          .radioButtonMolestiaSitioValue ==
                                                                      'Si') &&
                                                                  (_model.dropDownSitioValue ==
                                                                      6),
                                                              child: Align(
                                                                alignment:
                                                                    const AlignmentDirectional(
                                                                        0.0,
                                                                        1.0),
                                                                child: Padding(
                                                                  padding:
                                                                      const EdgeInsetsDirectional
                                                                              .fromSTEB(
                                                                          8.0,
                                                                          0.0,
                                                                          8.0,
                                                                          0.0),
                                                                  child:
                                                                      SizedBox(
                                                                    width: MediaQuery.sizeOf(context)
                                                                            .width *
                                                                        0.7,
                                                                    child:
                                                                        TextFormField(
                                                                      controller:
                                                                          _model
                                                                              .textFieldOpenSitioController,
                                                                      focusNode:
                                                                          _model
                                                                              .textFieldOpenSitioFocusNode,
                                                                      textCapitalization:
                                                                          TextCapitalization
                                                                              .sentences,
                                                                      obscureText:
                                                                          false,
                                                                      decoration:
                                                                          InputDecoration(
                                                                        isDense:
                                                                            true,
                                                                        labelText:
                                                                            'Describe la molestia a nivel de sitio:',
                                                                        labelStyle: FlutterFlowTheme.of(context)
                                                                            .labelLarge
                                                                            .override(
                                                                              fontFamily: 'Ancizar sans',
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                              fontSize: 16.0,
                                                                              useGoogleFonts: false,
                                                                            ),
                                                                        hintStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .override(
                                                                              fontFamily: 'Ancizar sans',
                                                                              fontSize: 15.0,
                                                                              useGoogleFonts: false,
                                                                              lineHeight: 2.5,
                                                                            ),
                                                                        enabledBorder:
                                                                            UnderlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        focusedBorder:
                                                                            UnderlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        errorBorder:
                                                                            UnderlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).error,
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        focusedErrorBorder:
                                                                            UnderlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).error,
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      maxLines:
                                                                          2,
                                                                      maxLength:
                                                                          120,
                                                                      maxLengthEnforcement:
                                                                          MaxLengthEnforcement
                                                                              .none,
                                                                      keyboardType:
                                                                          TextInputType
                                                                              .multiline,
                                                                      validator: _model
                                                                          .textFieldOpenSitioControllerValidator
                                                                          .asValidator(
                                                                              context),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        if (_model
                                                                .radioButtonMolestiaSitioValue ==
                                                            'Si')
                                                          Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    -1.0, 0.0),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                      20.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                              child: Text(
                                                                'Clasifique la molestia según los siguientes grados:',
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
                                                          ),
                                                        if (_model
                                                                .radioButtonMolestiaSitioValue ==
                                                            'Si')
                                                          FlutterFlowDropDown<
                                                              int>(
                                                            controller: _model
                                                                    .dropDownSitioGravedadValueController ??=
                                                                FormFieldController<
                                                                    int>(null),
                                                            options:
                                                                List<int>.from([
                                                              1,
                                                              2,
                                                              3,
                                                              4
                                                            ]),
                                                            optionLabels: const [
                                                              'Grado 1: No interfiere con su actividad diaria habitual',
                                                              'Grado 2: Algo de interferencia con la actividad que no requiere intervencion médica ',
                                                              'Grado 3: Previene realizar las actividades habituales y requiere intervención médica',
                                                              'Grado 4: Visita a Urgencias u hospitalización '
                                                            ],
                                                            onChanged: (val) =>
                                                                setState(() =>
                                                                    _model.dropDownSitioGravedadValue =
                                                                        val),
                                                            width: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width *
                                                                0.7,
                                                            height: 60.0,
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelLarge,
                                                            hintText:
                                                                'Clasifique la molestia según los siguientes grados:',
                                                            icon: Icon(
                                                              Icons
                                                                  .keyboard_arrow_down_rounded,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryText,
                                                              size: 24.0,
                                                            ),
                                                            fillColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .blancoFondo,
                                                            elevation: 2.0,
                                                            borderColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .alternate,
                                                            borderWidth: 2.0,
                                                            borderRadius: 8.0,
                                                            margin:
                                                                const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                    16.0,
                                                                    4.0,
                                                                    16.0,
                                                                    4.0),
                                                            hidesUnderline:
                                                                true,
                                                            isOverButton: true,
                                                            isSearchable: false,
                                                            isMultiSelect:
                                                                false,
                                                          ),
                                                        if (_model
                                                                .radioButtonMolestiaSitioValue ==
                                                            'Si')
                                                          Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    -1.0, 0.0),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                      20.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                              child: Text(
                                                                '¿El síntoma es persistente ?',
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
                                                          ),
                                                        if (_model
                                                                .radioButtonMolestiaSitioValue ==
                                                            'Si')
                                                          FlutterFlowDropDown<
                                                              int>(
                                                            controller: _model
                                                                    .dropDownSitioPersistenteValueController ??=
                                                                FormFieldController<
                                                                    int>(null),
                                                            options:
                                                                List<int>.from(
                                                                    [1, 2]),
                                                            optionLabels: const [
                                                              'Si',
                                                              'No'
                                                            ],
                                                            onChanged: (val) =>
                                                                setState(() =>
                                                                    _model.dropDownSitioPersistenteValue =
                                                                        val),
                                                            width: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width *
                                                                0.7,
                                                            height: 50.0,
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium,
                                                            hintText:
                                                                '¿El síntoma es persistente ?',
                                                            icon: Icon(
                                                              Icons
                                                                  .keyboard_arrow_down_rounded,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryText,
                                                              size: 24.0,
                                                            ),
                                                            fillColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .blancoFondo,
                                                            elevation: 2.0,
                                                            borderColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .alternate,
                                                            borderWidth: 2.0,
                                                            borderRadius: 8.0,
                                                            margin:
                                                                const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                    16.0,
                                                                    4.0,
                                                                    16.0,
                                                                    4.0),
                                                            hidesUnderline:
                                                                true,
                                                            isOverButton: true,
                                                            isSearchable: false,
                                                            isMultiSelect:
                                                                false,
                                                          ),
                                                        if (_model
                                                                .radioButtonMolestiaSitioValue ==
                                                            'Si')
                                                          Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    -1.0, 0.0),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                      20.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                              child: Text(
                                                                'Realice fotografía del síntoma en el sitio de vacunación (con flash) ',
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
                                                          ),
                                                        if (_model
                                                                .radioButtonMolestiaSitioValue ==
                                                            'Si')
                                                          FFButtonWidget(
                                                            onPressed:
                                                                () async {
                                                              final selectedMedia =
                                                                  await selectMediaWithSourceBottomSheet(
                                                                context:
                                                                    context,
                                                                storageFolderPath:
                                                                    currentUserUid,
                                                                maxWidth:
                                                                    2048.00,
                                                                imageQuality:
                                                                    50,
                                                                allowPhoto:
                                                                    true,
                                                              );
                                                              if (selectedMedia !=
                                                                      null &&
                                                                  selectedMedia.every((m) =>
                                                                      validateFileFormat(
                                                                          m.storagePath,
                                                                          context))) {
                                                                setState(() =>
                                                                    _model.isDataUploading1 =
                                                                        true);
                                                                var selectedUploadedFiles =
                                                                    <FFUploadedFile>[];

                                                                var downloadUrls =
                                                                    <String>[];
                                                                try {
                                                                  selectedUploadedFiles =
                                                                      selectedMedia
                                                                          .map((m) =>
                                                                              FFUploadedFile(
                                                                                name: m.storagePath.split('/').last,
                                                                                bytes: m.bytes,
                                                                                height: m.dimensions?.height,
                                                                                width: m.dimensions?.width,
                                                                                blurHash: m.blurHash,
                                                                              ))
                                                                          .toList();

                                                                  downloadUrls =
                                                                      await uploadSupabaseStorageFiles(
                                                                    bucketName:
                                                                        'vacunapp',
                                                                    selectedFiles:
                                                                        selectedMedia,
                                                                  );
                                                                } finally {
                                                                  _model.isDataUploading1 =
                                                                      false;
                                                                }
                                                                if (selectedUploadedFiles
                                                                            .length ==
                                                                        selectedMedia
                                                                            .length &&
                                                                    downloadUrls
                                                                            .length ==
                                                                        selectedMedia
                                                                            .length) {
                                                                  setState(() {
                                                                    _model.uploadedLocalFile1 =
                                                                        selectedUploadedFiles
                                                                            .first;
                                                                    _model.uploadedFileUrl1 =
                                                                        downloadUrls
                                                                            .first;
                                                                  });
                                                                } else {
                                                                  setState(
                                                                      () {});
                                                                  return;
                                                                }
                                                              }
                                                            },
                                                            text:
                                                                'Insertar imagen ⬆️',
                                                            options:
                                                                FFButtonOptions(
                                                              height: 40.0,
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                      24.0,
                                                                      0.0,
                                                                      24.0,
                                                                      0.0),
                                                              iconPadding:
                                                                  const EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .tertiary,
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            'Ancizar sans',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .azulOscuroFondo,
                                                                        useGoogleFonts:
                                                                            false,
                                                                      ),
                                                              elevation: 4.0,
                                                              borderSide:
                                                                  const BorderSide(
                                                                color: Colors
                                                                    .transparent,
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          30.0),
                                                            ),
                                                          ),
                                                        if ((_model.radioButtonMolestiaSitioValue ==
                                                                'Si') &&
                                                            (_model.uploadedFileUrl1 !=
                                                                ''))
                                                          ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                            child:
                                                                Image.network(
                                                              _model
                                                                  .uploadedFileUrl1,
                                                              width: 300.0,
                                                              height: 200.0,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        if (_model
                                                                .radioButtonMolestiaSitioValue ==
                                                            'Si')
                                                          Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    -1.0, 0.0),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                      20.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                              child: Text(
                                                                '\t¿Este síntoma en sitio de vacunación generó una alteración en su actividad diaria habitual (estudios, trabajo, hogar)? ',
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
                                                          ),
                                                        if (_model
                                                                .radioButtonMolestiaSitioValue ==
                                                            'Si')
                                                          Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child:
                                                                FlutterFlowDropDown<
                                                                    int>(
                                                              controller: _model
                                                                      .dropDownActividadDiariaSitioValueController ??=
                                                                  FormFieldController<
                                                                          int>(
                                                                      null),
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
                                                              onChanged: (val) =>
                                                                  setState(() =>
                                                                      _model.dropDownActividadDiariaSitioValue =
                                                                          val),
                                                              width: MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width *
                                                                  0.7,
                                                              height: 60.0,
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
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
                                                                  '\t¿Este síntoma en sitio de vacunación generó una alteración en su actividad diaria habitual (estudios, trabajo, hogar)? ',
                                                              icon: Icon(
                                                                Icons
                                                                    .keyboard_arrow_down_rounded,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                size: 24.0,
                                                              ),
                                                              fillColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .blancoFondo,
                                                              elevation: 2.0,
                                                              borderColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .alternate,
                                                              borderWidth: 2.0,
                                                              borderRadius: 8.0,
                                                              margin: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                  16.0,
                                                                  4.0,
                                                                  16.0,
                                                                  4.0),
                                                              hidesUnderline:
                                                                  true,
                                                              isOverButton:
                                                                  true,
                                                              isSearchable:
                                                                  false,
                                                              isMultiSelect:
                                                                  false,
                                                            ),
                                                          ),
                                                        Align(
                                                          alignment:
                                                              const AlignmentDirectional(
                                                                  -1.0, 0.0),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                    20.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                            child: Text(
                                                              '¿Ha tenido molestias generales? ',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Ancizar sans',
                                                                    fontSize:
                                                                        18.0,
                                                                    useGoogleFonts:
                                                                        false,
                                                                  ),
                                                            ),
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment:
                                                              const AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                    20.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                FlutterFlowRadioButton(
                                                                  options: [
                                                                    'Si',
                                                                    'No'
                                                                  ].toList(),
                                                                  onChanged: (val) =>
                                                                      setState(
                                                                          () {}),
                                                                  controller: _model
                                                                          .radioButtonMolestiaGeneralValueController ??=
                                                                      FormFieldController<
                                                                              String>(
                                                                          'No'),
                                                                  optionHeight:
                                                                      32.0,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium,
                                                                  selectedTextStyle:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium,
                                                                  buttonPosition:
                                                                      RadioButtonPosition
                                                                          .left,
                                                                  direction: Axis
                                                                      .horizontal,
                                                                  radioButtonColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                  inactiveRadioButtonColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                  toggleable:
                                                                      false,
                                                                  horizontalAlignment:
                                                                      WrapAlignment
                                                                          .start,
                                                                  verticalAlignment:
                                                                      WrapCrossAlignment
                                                                          .start,
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
                                                                    -1.0, 0.0),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                      20.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                              child: Text(
                                                                'Especifique cuál molestia:',
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
                                                          ),
                                                        if (_model
                                                                .radioButtonMolestiaGeneralValue ==
                                                            'Si')
                                                          Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child:
                                                                FlutterFlowDropDown<
                                                                    int>(
                                                              controller: _model
                                                                      .dropDownGeneralValueController ??=
                                                                  FormFieldController<
                                                                          int>(
                                                                      null),
                                                              options: List<
                                                                  int>.from([
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
                                                                14
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
                                                                'Otra'
                                                              ],
                                                              onChanged: (val) =>
                                                                  setState(() =>
                                                                      _model.dropDownGeneralValue =
                                                                          val),
                                                              width: MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width *
                                                                  0.7,
                                                              height: 50.0,
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium,
                                                              hintText:
                                                                  'Especifique cuál molestia:',
                                                              icon: Icon(
                                                                Icons
                                                                    .keyboard_arrow_down_rounded,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                size: 24.0,
                                                              ),
                                                              fillColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .blancoFondo,
                                                              elevation: 2.0,
                                                              borderColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .alternate,
                                                              borderWidth: 2.0,
                                                              borderRadius: 8.0,
                                                              margin: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                  16.0,
                                                                  4.0,
                                                                  16.0,
                                                                  4.0),
                                                              hidesUnderline:
                                                                  true,
                                                              isOverButton:
                                                                  true,
                                                              isSearchable:
                                                                  false,
                                                              isMultiSelect:
                                                                  false,
                                                            ),
                                                          ),
                                                        Align(
                                                          alignment:
                                                              const AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: Container(
                                                            decoration:
                                                                const BoxDecoration(),
                                                            child: Visibility(
                                                              visible: (_model
                                                                          .radioButtonMolestiaGeneralValue ==
                                                                      'Si') &&
                                                                  (_model.dropDownGeneralValue ==
                                                                      14),
                                                              child: Align(
                                                                alignment:
                                                                    const AlignmentDirectional(
                                                                        0.0,
                                                                        1.0),
                                                                child: Padding(
                                                                  padding:
                                                                      const EdgeInsetsDirectional
                                                                              .fromSTEB(
                                                                          8.0,
                                                                          0.0,
                                                                          8.0,
                                                                          0.0),
                                                                  child:
                                                                      SizedBox(
                                                                    width: MediaQuery.sizeOf(context)
                                                                            .width *
                                                                        0.7,
                                                                    child:
                                                                        TextFormField(
                                                                      controller:
                                                                          _model
                                                                              .textFieldOpenGenealController,
                                                                      focusNode:
                                                                          _model
                                                                              .textFieldOpenGenealFocusNode,
                                                                      textCapitalization:
                                                                          TextCapitalization
                                                                              .sentences,
                                                                      obscureText:
                                                                          false,
                                                                      decoration:
                                                                          InputDecoration(
                                                                        isDense:
                                                                            true,
                                                                        labelText:
                                                                            'Describe la molestia a nivel general:',
                                                                        labelStyle: FlutterFlowTheme.of(context)
                                                                            .labelLarge
                                                                            .override(
                                                                              fontFamily: 'Ancizar sans',
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                              fontSize: 16.0,
                                                                              useGoogleFonts: false,
                                                                            ),
                                                                        hintStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .override(
                                                                              fontFamily: 'Ancizar sans',
                                                                              fontSize: 15.0,
                                                                              useGoogleFonts: false,
                                                                              lineHeight: 2.5,
                                                                            ),
                                                                        enabledBorder:
                                                                            UnderlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        focusedBorder:
                                                                            UnderlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        errorBorder:
                                                                            UnderlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).error,
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        focusedErrorBorder:
                                                                            UnderlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).error,
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      maxLines:
                                                                          2,
                                                                      maxLength:
                                                                          120,
                                                                      maxLengthEnforcement:
                                                                          MaxLengthEnforcement
                                                                              .none,
                                                                      keyboardType:
                                                                          TextInputType
                                                                              .multiline,
                                                                      validator: _model
                                                                          .textFieldOpenGenealControllerValidator
                                                                          .asValidator(
                                                                              context),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        if (_model
                                                                .radioButtonMolestiaGeneralValue ==
                                                            'Si')
                                                          Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    -1.0, 0.0),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                      20.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                              child: Text(
                                                                'Clasifique la molestia según los siguientes grados:',
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
                                                          ),
                                                        if (_model
                                                                .radioButtonMolestiaGeneralValue ==
                                                            'Si')
                                                          Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child:
                                                                FlutterFlowDropDown<
                                                                    int>(
                                                              controller: _model
                                                                      .dropDownGeneralGravedadValueController ??=
                                                                  FormFieldController<
                                                                          int>(
                                                                      null),
                                                              options: List<
                                                                      int>.from(
                                                                  [1, 2, 3, 4]),
                                                              optionLabels: const [
                                                                'Grado 1: No interfiere con su actividad diaria habitual',
                                                                'Grado 2: Algo de interferencia con la actividad que no requiere intervención médica',
                                                                'Grado 3: Previene realizar las actividades habituales y requiere intervención médica',
                                                                'Grado 4: Visita a Urgencias u hospitalización '
                                                              ],
                                                              onChanged: (val) =>
                                                                  setState(() =>
                                                                      _model.dropDownGeneralGravedadValue =
                                                                          val),
                                                              width: MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width *
                                                                  0.7,
                                                              height: 50.0,
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium,
                                                              hintText:
                                                                  'Clasifique la molestia según los siguientes grados:',
                                                              icon: Icon(
                                                                Icons
                                                                    .keyboard_arrow_down_rounded,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                size: 24.0,
                                                              ),
                                                              fillColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .blancoFondo,
                                                              elevation: 2.0,
                                                              borderColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .alternate,
                                                              borderWidth: 2.0,
                                                              borderRadius: 8.0,
                                                              margin: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                  16.0,
                                                                  4.0,
                                                                  16.0,
                                                                  4.0),
                                                              hidesUnderline:
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
                                                                    -1.0, 0.0),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                      20.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                              child: Text(
                                                                'Marque si el brote luce como algunos de los siguientes: ',
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
                                                          ),
                                                        if ((_model.dropDownGeneralValue ==
                                                                13) &&
                                                            (_model.radioButtonMolestiaGeneralValue ==
                                                                'Si'))
                                                          Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child:
                                                                FlutterFlowDropDown<
                                                                    int>(
                                                              controller: _model
                                                                      .dropDownBroteValueController ??=
                                                                  FormFieldController<
                                                                          int>(
                                                                      null),
                                                              options: List<
                                                                      int>.from(
                                                                  [1, 2, 3]),
                                                              optionLabels: const [
                                                                'Áreas de piel inflamada y elevadas, rodeada de enrojecimiento, generalmente asociadas a picazón ',
                                                                'Áreas de enrojecimiento, rodeadas de un anillo de piel clara y con borde enrojecido',
                                                                'Áreas de piel inflamada, seca y con picazón, puede haber vejigas '
                                                              ],
                                                              onChanged: (val) =>
                                                                  setState(() =>
                                                                      _model.dropDownBroteValue =
                                                                          val),
                                                              width: MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width *
                                                                  0.7,
                                                              height: 50.0,
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium,
                                                              hintText:
                                                                  'Marque si el brote luce como algunos de los siguientes: ',
                                                              icon: Icon(
                                                                Icons
                                                                    .keyboard_arrow_down_rounded,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                size: 24.0,
                                                              ),
                                                              fillColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .blancoFondo,
                                                              elevation: 2.0,
                                                              borderColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .alternate,
                                                              borderWidth: 2.0,
                                                              borderRadius: 8.0,
                                                              margin: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                  16.0,
                                                                  4.0,
                                                                  16.0,
                                                                  4.0),
                                                              hidesUnderline:
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
                                                                    -1.0, 0.0),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                      20.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                              child: Text(
                                                                '¿El síntoma es persistente ?',
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
                                                          ),
                                                        if (_model
                                                                .radioButtonMolestiaGeneralValue ==
                                                            'Si')
                                                          Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child:
                                                                FlutterFlowDropDown<
                                                                    int>(
                                                              controller: _model
                                                                      .dropDownGeneralPersistenteValueController ??=
                                                                  FormFieldController<
                                                                          int>(
                                                                      null),
                                                              options: List<
                                                                      int>.from(
                                                                  [1, 2]),
                                                              optionLabels: const [
                                                                'Si',
                                                                'No'
                                                              ],
                                                              onChanged: (val) =>
                                                                  setState(() =>
                                                                      _model.dropDownGeneralPersistenteValue =
                                                                          val),
                                                              width: MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width *
                                                                  0.7,
                                                              height: 50.0,
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium,
                                                              hintText:
                                                                  '¿El síntoma es persistente ?',
                                                              icon: Icon(
                                                                Icons
                                                                    .keyboard_arrow_down_rounded,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                size: 24.0,
                                                              ),
                                                              fillColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .blancoFondo,
                                                              elevation: 2.0,
                                                              borderColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .alternate,
                                                              borderWidth: 2.0,
                                                              borderRadius: 8.0,
                                                              margin: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                  16.0,
                                                                  4.0,
                                                                  16.0,
                                                                  4.0),
                                                              hidesUnderline:
                                                                  true,
                                                              isOverButton:
                                                                  true,
                                                              isSearchable:
                                                                  false,
                                                              isMultiSelect:
                                                                  false,
                                                            ),
                                                          ),
                                                        Align(
                                                          alignment:
                                                              const AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: Container(
                                                            decoration:
                                                                const BoxDecoration(),
                                                          ),
                                                        ),
                                                        if (_model
                                                                .radioButtonMolestiaGeneralValue ==
                                                            'Si')
                                                          Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    -1.0, 0.0),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                      20.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                              child: Text(
                                                                'Realice fotografía del síntoma general (con flash) en el lugar donde se presenta ',
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
                                                          ),
                                                        if (_model
                                                                .radioButtonMolestiaGeneralValue ==
                                                            'Si')
                                                          FFButtonWidget(
                                                            onPressed:
                                                                () async {
                                                              final selectedMedia =
                                                                  await selectMediaWithSourceBottomSheet(
                                                                context:
                                                                    context,
                                                                storageFolderPath:
                                                                    currentUserUid,
                                                                maxWidth:
                                                                    2048.00,
                                                                imageQuality:
                                                                    50,
                                                                allowPhoto:
                                                                    true,
                                                              );
                                                              if (selectedMedia !=
                                                                      null &&
                                                                  selectedMedia.every((m) =>
                                                                      validateFileFormat(
                                                                          m.storagePath,
                                                                          context))) {
                                                                setState(() =>
                                                                    _model.isDataUploading2 =
                                                                        true);
                                                                var selectedUploadedFiles =
                                                                    <FFUploadedFile>[];

                                                                var downloadUrls =
                                                                    <String>[];
                                                                try {
                                                                  selectedUploadedFiles =
                                                                      selectedMedia
                                                                          .map((m) =>
                                                                              FFUploadedFile(
                                                                                name: m.storagePath.split('/').last,
                                                                                bytes: m.bytes,
                                                                                height: m.dimensions?.height,
                                                                                width: m.dimensions?.width,
                                                                                blurHash: m.blurHash,
                                                                              ))
                                                                          .toList();

                                                                  downloadUrls =
                                                                      await uploadSupabaseStorageFiles(
                                                                    bucketName:
                                                                        'vacunapp',
                                                                    selectedFiles:
                                                                        selectedMedia,
                                                                  );
                                                                } finally {
                                                                  _model.isDataUploading2 =
                                                                      false;
                                                                }
                                                                if (selectedUploadedFiles
                                                                            .length ==
                                                                        selectedMedia
                                                                            .length &&
                                                                    downloadUrls
                                                                            .length ==
                                                                        selectedMedia
                                                                            .length) {
                                                                  setState(() {
                                                                    _model.uploadedLocalFile2 =
                                                                        selectedUploadedFiles
                                                                            .first;
                                                                    _model.uploadedFileUrl2 =
                                                                        downloadUrls
                                                                            .first;
                                                                  });
                                                                } else {
                                                                  setState(
                                                                      () {});
                                                                  return;
                                                                }
                                                              }
                                                            },
                                                            text:
                                                                'Insertar imagen ⬆️',
                                                            options:
                                                                FFButtonOptions(
                                                              height: 40.0,
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                      24.0,
                                                                      0.0,
                                                                      24.0,
                                                                      0.0),
                                                              iconPadding:
                                                                  const EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .tertiary,
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            'Ancizar sans',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .azulOscuroFondo,
                                                                        useGoogleFonts:
                                                                            false,
                                                                      ),
                                                              elevation: 4.0,
                                                              borderSide:
                                                                  const BorderSide(
                                                                color: Colors
                                                                    .transparent,
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          30.0),
                                                            ),
                                                          ),
                                                        if ((_model.radioButtonMolestiaGeneralValue ==
                                                                'Si') &&
                                                            (_model.uploadedFileUrl2 !=
                                                                ''))
                                                          ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                            child:
                                                                Image.network(
                                                              _model
                                                                  .uploadedFileUrl2,
                                                              width: 300.0,
                                                              height: 200.0,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        if (_model
                                                                .radioButtonMolestiaGeneralValue ==
                                                            'Si')
                                                          Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    -1.0, 0.0),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                      20.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                              child: Text(
                                                                '\t¿Este síntoma general generó una alteración en su actividad diaria habitual (estudios, trabajo, hogar)? ',
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
                                                          ),
                                                        if (_model
                                                                .radioButtonMolestiaGeneralValue ==
                                                            'Si')
                                                          Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child:
                                                                FlutterFlowDropDown<
                                                                    int>(
                                                              controller: _model
                                                                      .dropDownActividadDiariaGeneralValueController ??=
                                                                  FormFieldController<
                                                                          int>(
                                                                      null),
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
                                                              onChanged: (val) =>
                                                                  setState(() =>
                                                                      _model.dropDownActividadDiariaGeneralValue =
                                                                          val),
                                                              width: MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width *
                                                                  0.7,
                                                              height: 60.0,
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
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
                                                                  '\t¿Este síntoma general generó una alteración en su actividad diaria habitual (estudios, trabajo, hogar)? ',
                                                              icon: Icon(
                                                                Icons
                                                                    .keyboard_arrow_down_rounded,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                size: 24.0,
                                                              ),
                                                              fillColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .blancoFondo,
                                                              elevation: 2.0,
                                                              borderColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .alternate,
                                                              borderWidth: 2.0,
                                                              borderRadius: 8.0,
                                                              margin: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                  16.0,
                                                                  4.0,
                                                                  16.0,
                                                                  4.0),
                                                              hidesUnderline:
                                                                  true,
                                                              isOverButton:
                                                                  true,
                                                              isSearchable:
                                                                  false,
                                                              isMultiSelect:
                                                                  false,
                                                            ),
                                                          ),
                                                        Align(
                                                          alignment:
                                                              const AlignmentDirectional(
                                                                  -1.0, 0.0),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                    20.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                            child: Text(
                                                              'Desea que nos comuniquemos con usted para orientarlo respecto a este síntoma? ',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Ancizar sans',
                                                                    fontSize:
                                                                        18.0,
                                                                    useGoogleFonts:
                                                                        false,
                                                                  ),
                                                            ),
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment:
                                                              const AlignmentDirectional(
                                                                  -1.0, 0.0),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                    20.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                            child:
                                                                FlutterFlowRadioButton(
                                                              options: [
                                                                'Si',
                                                                'No'
                                                              ].toList(),
                                                              onChanged: (val) =>
                                                                  setState(
                                                                      () {}),
                                                              controller: _model
                                                                      .radioButtonSolicitaComunicacionValueController ??=
                                                                  FormFieldController<
                                                                          String>(
                                                                      'No'),
                                                              optionHeight:
                                                                  32.0,
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium,
                                                              selectedTextStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium,
                                                              buttonPosition:
                                                                  RadioButtonPosition
                                                                      .left,
                                                              direction: Axis
                                                                  .horizontal,
                                                              radioButtonColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                              inactiveRadioButtonColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                              toggleable: false,
                                                              horizontalAlignment:
                                                                  WrapAlignment
                                                                      .start,
                                                              verticalAlignment:
                                                                  WrapCrossAlignment
                                                                      .start,
                                                            ),
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment:
                                                              const AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: Container(
                                                            width: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width *
                                                                1.0,
                                                            height: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .height *
                                                                0.12,
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
                                                                  FFButtonWidget(
                                                                onPressed:
                                                                    () async {
                                                                  var shouldSetState =
                                                                      false;
                                                                  if (_model.formKey
                                                                              .currentState ==
                                                                          null ||
                                                                      !_model
                                                                          .formKey
                                                                          .currentState!
                                                                          .validate()) {
                                                                    return;
                                                                  }
                                                                  if (_model
                                                                          .datePicked ==
                                                                      null) {
                                                                    ScaffoldMessenger.of(
                                                                            context)
                                                                        .showSnackBar(
                                                                      SnackBar(
                                                                        content:
                                                                            Text(
                                                                          'Indica una fecha de inicio de síntomas',
                                                                          style:
                                                                              TextStyle(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                          ),
                                                                        ),
                                                                        duration:
                                                                            const Duration(milliseconds: 4000),
                                                                        backgroundColor:
                                                                            FlutterFlowTheme.of(context).secondary,
                                                                      ),
                                                                    );
                                                                    return;
                                                                  }
                                                                  if (_model
                                                                          .radioButtonMolestiaSitioValue ==
                                                                      null) {
                                                                    return;
                                                                  }
                                                                  if (_model
                                                                          .radioButtonSolicitaComunicacionValue ==
                                                                      null) {
                                                                    return;
                                                                  }
                                                                  _model.createSymptomResult =
                                                                      await CreateNewSymptomReportCall
                                                                          .call(
                                                                    userId: FFAppState()
                                                                        .userId,
                                                                    molestiaSitio:
                                                                        _model.radioButtonMolestiaSitioValue ==
                                                                            'Si',
                                                                    molestiaGeneral:
                                                                        _model.radioButtonSolicitaComunicacionValue ==
                                                                            'Si',
                                                                    broteId: _model.radioButtonSolicitaComunicacionValue ==
                                                                            'Si'
                                                                        ? (_model.dropDownGeneralValue ==
                                                                                13
                                                                            ? _model.dropDownBroteValue
                                                                            : 0)
                                                                        : 0,
                                                                    molestiaSitioId: _model.radioButtonMolestiaSitioValue ==
                                                                            'Si'
                                                                        ? _model
                                                                            .dropDownSitioValue
                                                                        : 0,
                                                                    molestiaSitioGrado: _model.radioButtonMolestiaSitioValue ==
                                                                            'Si'
                                                                        ? _model
                                                                            .dropDownSitioGravedadValue
                                                                        : 0,
                                                                    molestiaGeneralId: _model.radioButtonSolicitaComunicacionValue ==
                                                                            'Si'
                                                                        ? _model
                                                                            .dropDownGeneralValue
                                                                        : 0,
                                                                    molestiaGeneralGrado: _model.radioButtonSolicitaComunicacionValue ==
                                                                            'Si'
                                                                        ? _model
                                                                            .dropDownGeneralGravedadValue
                                                                        : 0,
                                                                    date:
                                                                        dateTimeFormat(
                                                                      'yyyy-MM-dd HH:mm:ss',
                                                                      _model
                                                                          .datePicked,
                                                                      locale: FFLocalizations.of(
                                                                              context)
                                                                          .languageCode,
                                                                    ),
                                                                    molestiaSitioOtra:
                                                                        _model
                                                                            .textFieldOpenSitioController
                                                                            .text,
                                                                    molestiaSitioPersistente:
                                                                        _model.dropDownSitioPersistenteValue ==
                                                                            1,
                                                                    molestiaSitioImg:
                                                                        _model
                                                                            .uploadedFileUrl1,
                                                                    molestiaGeneralOtra:
                                                                        _model
                                                                            .textFieldOpenGenealController
                                                                            .text,
                                                                    molestiaGeneralPersistente:
                                                                        _model.dropDownGeneralPersistenteValue ==
                                                                            1,
                                                                    molestiaGeneralImg:
                                                                        _model
                                                                            .uploadedFileUrl2,
                                                                    solicitaComunicacion:
                                                                        _model.radioButtonSolicitaComunicacionValue ==
                                                                            'Si',
                                                                    alteracionDiariaSitio:
                                                                        _model
                                                                            .dropDownActividadDiariaSitioValue,
                                                                    alteracionDiariaGeneral:
                                                                        _model
                                                                            .dropDownActividadDiariaGeneralValue,
                                                                  );
                                                                  shouldSetState =
                                                                      true;
                                                                  if ((_model
                                                                          .createSymptomResult
                                                                          ?.succeeded ??
                                                                      true)) {
                                                                    ScaffoldMessenger.of(
                                                                            context)
                                                                        .showSnackBar(
                                                                      SnackBar(
                                                                        content:
                                                                            Text(
                                                                          'Reporte enviado correctamente',
                                                                          style:
                                                                              TextStyle(
                                                                            fontFamily:
                                                                                'Ancizar sans',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).azulOscuroFondo,
                                                                          ),
                                                                        ),
                                                                        duration:
                                                                            const Duration(milliseconds: 800),
                                                                        backgroundColor:
                                                                            FlutterFlowTheme.of(context).blancoFondo,
                                                                      ),
                                                                    );

                                                                    context.pushNamed(
                                                                        'SymptomsHistory');

                                                                    if (shouldSetState) {
                                                                      setState(
                                                                          () {});
                                                                    }
                                                                    return;
                                                                  } else {
                                                                    ScaffoldMessenger.of(
                                                                            context)
                                                                        .showSnackBar(
                                                                      SnackBar(
                                                                        content:
                                                                            Text(
                                                                          'Error guardando sintoma------${(_model.createSymptomResult?.bodyText ?? '')}',
                                                                          style:
                                                                              TextStyle(
                                                                            fontFamily:
                                                                                'Ancizar sans',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).error,
                                                                          ),
                                                                        ),
                                                                        duration:
                                                                            const Duration(milliseconds: 4000),
                                                                        backgroundColor:
                                                                            FlutterFlowTheme.of(context).blancoFondo,
                                                                      ),
                                                                    );
                                                                    if (shouldSetState) {
                                                                      setState(
                                                                          () {});
                                                                    }
                                                                    return;
                                                                  }

                                                                  if (shouldSetState) {
                                                                    setState(
                                                                        () {});
                                                                  }
                                                                },
                                                                text: 'Enviar',
                                                                options:
                                                                    FFButtonOptions(
                                                                  width: MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.4,
                                                                  height: 40.0,
                                                                  padding:
                                                                      const EdgeInsetsDirectional
                                                                              .fromSTEB(
                                                                          24.0,
                                                                          0.0,
                                                                          24.0,
                                                                          0.0),
                                                                  iconPadding:
                                                                      const EdgeInsetsDirectional
                                                                              .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondary,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            'Ancizar sans',
                                                                        color: Colors
                                                                            .white,
                                                                        useGoogleFonts:
                                                                            false,
                                                                      ),
                                                                  elevation:
                                                                      3.0,
                                                                  borderSide:
                                                                      const BorderSide(
                                                                    color: Colors
                                                                        .transparent,
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              40.0),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ]
                                                          .divide(
                                                              const SizedBox(
                                                                  height: 20.0))
                                                          .around(
                                                              const SizedBox(
                                                                  height:
                                                                      20.0)),
                                                    ),
                                                  ),
                                                ),
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
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
