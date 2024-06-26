import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'symptoms_history_model.dart';
export 'symptoms_history_model.dart';

import 'package:keraltyApp/app_state.dart';
class SymptomsHistoryWidget extends StatefulWidget {
  const SymptomsHistoryWidget({super.key});

  @override
  State<SymptomsHistoryWidget> createState() => _SymptomsHistoryWidgetState();
}

class _SymptomsHistoryWidgetState extends State<SymptomsHistoryWidget> {
  late SymptomsHistoryModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SymptomsHistoryModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await actions.lockOrientation();
      setState(() {
        FFAppState().SDate = '';
        FFAppState().SAlteracionDiaria = 0;
        FFAppState().SSolicitaComunicacion = false;
        FFAppState().SPersistente = false;
        FFAppState().SImage = '';
        FFAppState().SBroteId = 0;
        FFAppState().SMolestiaGeneralGrado = 0;
        FFAppState().SMolestiaGeneralId = 0;
        FFAppState().SMolestiaGeneral = false;
        FFAppState().SMolestiaSitioGrado = 0;
        FFAppState().SMolestiaSitioId = 0;
        FFAppState().SMolestiaSitio = false;
      });
      _model.getReportByIdRessponse = await GetSymptomReportsByIdCall.call(
        id: FFAppState().reportDetailId,
      );
      FFAppState().update(() {
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
      setState(() {});
    });
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
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: MediaQuery.sizeOf(context).height * 0.87,
                    decoration: const BoxDecoration(),
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: MediaQuery.sizeOf(context).height * 0.2,
                            decoration: const BoxDecoration(),
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
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
                                      Expanded(
                                        child: Align(
                                          alignment:
                                              const AlignmentDirectional(0.0, 0.0),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 25.0, 0.0, 0.0),
                                            child: Text(
                                              'Historial',
                                              textAlign: TextAlign.center,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .displayLarge,
                                            ),
                                          ),
                                        ),
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
                                        0.05,
                                    decoration: const BoxDecoration(),
                                  ),
                                  Stack(
                                    children: [
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(-0.51, 0.0),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            context.pushNamed(
                                              'Symptoms',
                                              extra: <String, dynamic>{
                                                kTransitionInfoKey:
                                                    const TransitionInfo(
                                                  hasTransition: true,
                                                  transitionType:
                                                      PageTransitionType.fade,
                                                  duration:
                                                      Duration(milliseconds: 0),
                                                ),
                                              },
                                            );
                                          },
                                          text: 'Reportes',
                                          options: FFButtonOptions(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.4,
                                            height: MediaQuery.sizeOf(context)
                                                    .height *
                                                0.04,
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    24.0, 0.0, 24.0, 0.0),
                                            iconPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: FlutterFlowTheme.of(context)
                                                .secondary,
                                            textStyle: FlutterFlowTheme.of(
                                                    context)
                                                .titleSmall
                                                .override(
                                                  fontFamily: 'Ancizar sans',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .tertiary,
                                                  useGoogleFonts: false,
                                                ),
                                            elevation: 3.0,
                                            borderSide: const BorderSide(
                                              color: Colors.transparent,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(40.0),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.61, 0.0),
                                        child: FFButtonWidget(
                                          onPressed: () {
                                            print('Button pressed ...');
                                          },
                                          text: 'Historial',
                                          options: FFButtonOptions(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.4,
                                            height: MediaQuery.sizeOf(context)
                                                    .height *
                                                0.04,
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    24.0, 0.0, 24.0, 0.0),
                                            iconPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: FlutterFlowTheme.of(context)
                                                .tertiary,
                                            textStyle: FlutterFlowTheme.of(
                                                    context)
                                                .titleSmall
                                                .override(
                                                  fontFamily: 'Ancizar sans',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondary,
                                                  useGoogleFonts: false,
                                                ),
                                            elevation: 3.0,
                                            borderSide: const BorderSide(
                                              color: Colors.transparent,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(40.0),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    height:
                                        MediaQuery.sizeOf(context).height * 0.1,
                                    decoration: const BoxDecoration(),
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 10.0),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 1.0,
                                height:
                                    MediaQuery.sizeOf(context).height * 0.66,
                                decoration: const BoxDecoration(),
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: FutureBuilder<ApiCallResponse>(
                                    future: GetSymptomReportsByUserIdCall.call(
                                      userId: currentUserUid,
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50.0,
                                            height: 50.0,
                                            child: SpinKitPumpingHeart(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .azulMedio,
                                              size: 50.0,
                                            ),
                                          ),
                                        );
                                      }
                                      final listViewGetSymptomReportsByUserIdResponse =
                                          snapshot.data!;
                                      return Builder(
                                        builder: (context) {
                                          final varReports =
                                              listViewGetSymptomReportsByUserIdResponse
                                                  .jsonBody
                                                  .toList();
                                          return ListView.separated(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 12.0),
                                            reverse: true,
                                            scrollDirection: Axis.vertical,
                                            itemCount: varReports.length,
                                            separatorBuilder: (_, __) =>
                                                const SizedBox(height: 12.0),
                                            itemBuilder:
                                                (context, varReportsIndex) {
                                              final varReportsItem =
                                                  varReports[varReportsIndex];
                                              return Align(
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 10.0, 0.0, 0.0),
                                                  child: InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      setState(() {
                                                        FFAppState()
                                                                .reportDetailId =
                                                            getJsonField(
                                                          varReportsItem,
                                                          r'''$["id"]''',
                                                        );
                                                        FFAppState().Sindice =
                                                            varReportsIndex;
                                                      });

                                                      context.pushNamed(
                                                          'SymptomDetail');
                                                    },
                                                    child: Material(
                                                      color: Colors.transparent,
                                                      elevation: 1.0,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20.0),
                                                      ),
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
                                                                0.15,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .tertiary,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      20.0),
                                                        ),
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Row(
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
                                                                      Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            10.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        Container(
                                                                      width: MediaQuery.sizeOf(context)
                                                                              .width *
                                                                          0.05,
                                                                      height: MediaQuery.sizeOf(context)
                                                                              .width *
                                                                          0.05,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .accent3,
                                                                        shape: BoxShape
                                                                            .circle,
                                                                      ),
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Flexible(
                                                                  child: Align(
                                                                    alignment:
                                                                        const AlignmentDirectional(
                                                                            1.0,
                                                                            0.0),
                                                                    child:
                                                                        FlutterFlowIconButton(
                                                                      borderColor:
                                                                          Colors
                                                                              .transparent,
                                                                      borderRadius:
                                                                          20.0,
                                                                      borderWidth:
                                                                          1.0,
                                                                      buttonSize:
                                                                          46.0,
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .add,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        size:
                                                                            20.0,
                                                                      ),
                                                                      onPressed:
                                                                          () async {
                                                                        setState(
                                                                            () {
                                                                          FFAppState().reportDetailId =
                                                                              getJsonField(
                                                                            varReportsItem,
                                                                            r'''$["id"]''',
                                                                          );
                                                                          FFAppState().Sindice =
                                                                              varReportsIndex;
                                                                        });

                                                                        context.pushNamed(
                                                                            'SymptomDetail');
                                                                      },
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            Container(
                                                              width: MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width *
                                                                  0.7,
                                                              height: MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .height *
                                                                  0.05,
                                                              decoration:
                                                                  const BoxDecoration(),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Align(
                                                                    alignment:
                                                                        const AlignmentDirectional(
                                                                            -1.0,
                                                                            0.0),
                                                                    child:
                                                                        Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          10.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Text(
                                                                        'Fecha reporte: ${getJsonField(
                                                                          varReportsItem,
                                                                          r'''$["date"]''',
                                                                        ).toString()}'
                                                                            .maybeHandleOverflow(maxChars: 25),
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .labelLarge,
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
                                                                          10.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Text(
                                                                        'Reporte numero: ${varReportsIndex.toString()}'.maybeHandleOverflow(
                                                                            maxChars:
                                                                                25),
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .labelLarge,
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
                                                ),
                                              );
                                            },
                                          );
                                        },
                                      );
                                    },
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
    );
  }
}
