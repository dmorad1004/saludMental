import '/auth/supabase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'profile_model.dart';
export 'profile_model.dart';


import 'package:keraltyApp/app_state.dart';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({super.key});

  @override
  State<ProfileWidget> createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  late ProfileModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProfileModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await actions.lockOrientation();
    });

    _model.textController1 ??=
        TextEditingController(text: FFAppState().userName);
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??=
        TextEditingController(text: FFAppState().userPhome);
    _model.textFieldFocusNode2 ??= FocusNode();

    _model.textController3 ??=
        TextEditingController(text: FFAppState().userEmail);
    _model.textFieldFocusNode3 ??= FocusNode();

    _model.textController4 ??=
        TextEditingController(text: FFAppState().userCode);
    _model.textFieldFocusNode4 ??= FocusNode();
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
          'Mi perfil',
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
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFFD7F3FF), Color(0xFF86C2EA), Color(0xCC2065A2)],
              stops: [0.0, 1.0, 1.0],
              begin: AlignmentDirectional(0.0, -1.0),
              end: AlignmentDirectional(0, 1.0),
            ),
            shape: BoxShape.rectangle,
          ),
          alignment: const AlignmentDirectional(0.0, 0.0),
          child: Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: MediaQuery.sizeOf(context).height * 0.87,
                      decoration: const BoxDecoration(),
                      alignment: const AlignmentDirectional(0.0, -1.0),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              height: MediaQuery.sizeOf(context).height * 0.3,
                              decoration: const BoxDecoration(),
                              alignment: const AlignmentDirectional(0.0, -1.0),
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Opacity(
                                      opacity: 0.0,
                                      child: Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, -1.0),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 15.0, 0.0, 0.0),
                                          child: FlutterFlowIconButton(
                                            borderRadius: 20.0,
                                            borderWidth: 1.0,
                                            buttonSize: 40.0,
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
                                    ),
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 45.0, 0.0, 0.0),
                                              child: Container(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.35,
                                                height:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.35,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondary,
                                                  shape: BoxShape.circle,
                                                ),
                                                child: Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Icon(
                                                    FFIcons.kuser,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .tertiary,
                                                    size: 80.0,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Align(
                                              alignment: const AlignmentDirectional(
                                                  0.0, 1.0),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 25.0),
                                                child: Text(
                                                  'Datos personales',
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .displayLarge,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(0.0, 0.0),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 15.0, 0.0, 0.0),
                                            child: FlutterFlowIconButton(
                                              borderRadius: 20.0,
                                              borderWidth: 1.0,
                                              buttonSize: 40.0,
                                              icon: Icon(
                                                FFIcons.klogout,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondary,
                                                size: 24.0,
                                              ),
                                              onPressed: () async {
                                                GoRouter.of(context)
                                                    .prepareAuthEvent();
                                                await authManager.signOut();
                                                GoRouter.of(context)
                                                    .clearRedirectLocation();

                                                setState(() {
                                                  FFAppState().deleteUserId();
                                                  FFAppState().userId = '';

                                                  FFAppState().deleteUserName();
                                                  FFAppState().userName = '';

                                                  FFAppState()
                                                      .deleteUserPhome();
                                                  FFAppState().userPhome = '';

                                                  FFAppState()
                                                      .deleteUserEmail();
                                                  FFAppState().userEmail = '';

                                                  FFAppState().deleteUserCode();
                                                  FFAppState().userCode = '';

                                                  FFAppState()
                                                      .deleteUserStatus();
                                                  FFAppState().userStatus = 0;

                                                  FFAppState()
                                                      .deleteUserCodeId();
                                                  FFAppState().userCodeId = 0;

                                                  FFAppState()
                                                      .deleteHasAppointment();
                                                  FFAppState().hasAppointment =
                                                      false;

                                                  FFAppState()
                                                      .deleteAppointmentHospitalName();
                                                  FFAppState()
                                                      .appointmentHospitalName = '';

                                                  FFAppState()
                                                      .deleteAppointmentHospitalAddress();
                                                  FFAppState()
                                                      .appointmentHospitalAddress = '';

                                                  FFAppState()
                                                      .deleteAppointmentHospitalCity();
                                                  FFAppState()
                                                      .appointmentHospitalCity = '';

                                                  FFAppState()
                                                      .deleteAppointmentHospitalPhone();
                                                  FFAppState()
                                                      .appointmentHospitalPhone = '';

                                                  FFAppState()
                                                      .deleteAppointmentDate();
                                                  FFAppState().appointmentDate =
                                                      '';

                                                  FFAppState().deleteReports();
                                                  FFAppState().reports = [];

                                                  FFAppState()
                                                      .deleteReportDetailId();
                                                  FFAppState().reportDetailId =
                                                      0;

                                                  FFAppState().SMolestiaSitio =
                                                      false;
                                                  FFAppState()
                                                      .SMolestiaSitioId = 0;
                                                  FFAppState()
                                                      .SMolestiaSitioGrado = 0;
                                                  FFAppState()
                                                      .SMolestiaGeneral = false;
                                                  FFAppState()
                                                      .SMolestiaGeneralId = 0;
                                                  FFAppState()
                                                      .SMolestiaGeneralGrado = 0;
                                                  FFAppState().SBroteId = 0;
                                                  FFAppState().SImage = '';
                                                  FFAppState().SPersistente =
                                                      false;
                                                  FFAppState()
                                                          .SSolicitaComunicacion =
                                                      false;
                                                  FFAppState()
                                                      .SAlteracionDiaria = 0;
                                                  FFAppState().SDate = '';
                                                  FFAppState().Sindice = 0;
                                                  FFAppState().sImagePath = '';
                                                });

                                                context.goNamedAuth(
                                                    'Start', context.mounted);
                                              },
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            GoRouter.of(context)
                                                .prepareAuthEvent();
                                            await authManager.signOut();
                                            GoRouter.of(context)
                                                .clearRedirectLocation();

                                            setState(() {
                                              FFAppState().deleteUserId();
                                              FFAppState().userId = '';

                                              FFAppState().deleteUserName();
                                              FFAppState().userName = '';

                                              FFAppState().deleteUserPhome();
                                              FFAppState().userPhome = '';

                                              FFAppState().deleteUserEmail();
                                              FFAppState().userEmail = '';

                                              FFAppState().deleteUserCode();
                                              FFAppState().userCode = '';

                                              FFAppState().deleteUserStatus();
                                              FFAppState().userStatus = 0;

                                              FFAppState().deleteUserCodeId();
                                              FFAppState().userCodeId = 0;

                                              FFAppState()
                                                  .deleteHasAppointment();
                                              FFAppState().hasAppointment =
                                                  false;

                                              FFAppState()
                                                  .deleteAppointmentHospitalName();
                                              FFAppState()
                                                  .appointmentHospitalName = '';

                                              FFAppState()
                                                  .deleteAppointmentHospitalAddress();
                                              FFAppState()
                                                  .appointmentHospitalAddress = '';

                                              FFAppState()
                                                  .deleteAppointmentHospitalCity();
                                              FFAppState()
                                                  .appointmentHospitalCity = '';

                                              FFAppState()
                                                  .deleteAppointmentHospitalPhone();
                                              FFAppState()
                                                  .appointmentHospitalPhone = '';

                                              FFAppState()
                                                  .deleteAppointmentDate();
                                              FFAppState().appointmentDate = '';

                                              FFAppState().deleteReports();
                                              FFAppState().reports = [];

                                              FFAppState()
                                                  .deleteReportDetailId();
                                              FFAppState().reportDetailId = 0;

                                              FFAppState().SMolestiaSitio =
                                                  false;
                                              FFAppState().SMolestiaSitioId = 0;
                                              FFAppState().SMolestiaSitioGrado =
                                                  0;
                                              FFAppState().SMolestiaGeneral =
                                                  false;
                                              FFAppState().SMolestiaGeneralId =
                                                  0;
                                              FFAppState()
                                                  .SMolestiaGeneralGrado = 0;
                                              FFAppState().SBroteId = 0;
                                              FFAppState().SImage = '';
                                              FFAppState().SPersistente = false;
                                              FFAppState()
                                                      .SSolicitaComunicacion =
                                                  false;
                                              FFAppState().SAlteracionDiaria =
                                                  0;
                                              FFAppState().SDate = '';
                                              FFAppState().Sindice = 0;
                                              FFAppState().sImagePath = '';
                                            });

                                            context.goNamedAuth(
                                                'Start', context.mounted);
                                          },
                                          child: Text(
                                            'Cerrar \nsesión',
                                            textAlign: TextAlign.justify,
                                            style: FlutterFlowTheme.of(context)
                                                .bodySmall
                                                .override(
                                                  fontFamily: 'Ancizar sans',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  fontSize: 12.0,
                                                  fontWeight: FontWeight.bold,
                                                  useGoogleFonts: false,
                                                  lineHeight: 1.0,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              height: MediaQuery.sizeOf(context).height * 0.6,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).tertiary,
                                shape: BoxShape.rectangle,
                              ),
                              alignment: const AlignmentDirectional(0.0, -1.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Align(
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          8.0, 0.0, 8.0, 0.0),
                                      child: SizedBox(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.8,
                                        child: TextFormField(
                                          controller: _model.textController1,
                                          focusNode: _model.textFieldFocusNode1,
                                          autofocus: true,
                                          readOnly: true,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText: 'Nombre:',
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium,
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily:
                                                          'Ancizar sans',
                                                      useGoogleFonts: false,
                                                      lineHeight: 2.5,
                                                    ),
                                            enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            errorBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedErrorBorder:
                                                UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge,
                                          textAlign: TextAlign.end,
                                          validator: _model
                                              .textController1Validator
                                              .asValidator(context),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(0.0, 1.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          8.0, 0.0, 8.0, 0.0),
                                      child: SizedBox(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.8,
                                        child: TextFormField(
                                          controller: _model.textController2,
                                          focusNode: _model.textFieldFocusNode2,
                                          autofocus: true,
                                          readOnly: true,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText: 'Teléfono:',
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium,
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily:
                                                          'Ancizar sans',
                                                      useGoogleFonts: false,
                                                      lineHeight: 2.5,
                                                    ),
                                            enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            errorBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedErrorBorder:
                                                UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge,
                                          textAlign: TextAlign.end,
                                          validator: _model
                                              .textController2Validator
                                              .asValidator(context),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(0.0, 1.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          8.0, 0.0, 8.0, 0.0),
                                      child: SizedBox(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.8,
                                        child: TextFormField(
                                          controller: _model.textController3,
                                          focusNode: _model.textFieldFocusNode3,
                                          autofocus: true,
                                          readOnly: true,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText: 'Correo electrónico:',
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium,
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily:
                                                          'Ancizar sans',
                                                      useGoogleFonts: false,
                                                      lineHeight: 2.5,
                                                    ),
                                            enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            errorBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedErrorBorder:
                                                UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge,
                                          textAlign: TextAlign.end,
                                          validator: _model
                                              .textController3Validator
                                              .asValidator(context),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(0.0, 1.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          8.0, 0.0, 8.0, 0.0),
                                      child: SizedBox(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.8,
                                        child: TextFormField(
                                          controller: _model.textController4,
                                          focusNode: _model.textFieldFocusNode4,
                                          autofocus: true,
                                          readOnly: true,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText: 'Código:',
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium,
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily:
                                                          'Ancizar sans',
                                                      useGoogleFonts: false,
                                                      lineHeight: 2.5,
                                                    ),
                                            enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            errorBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedErrorBorder:
                                                UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge,
                                          textAlign: TextAlign.end,
                                          validator: _model
                                              .textController4Validator
                                              .asValidator(context),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
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
    );
  }
}
