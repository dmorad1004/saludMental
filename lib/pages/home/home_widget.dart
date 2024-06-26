import '/auth/base_auth_user_provider.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'home_model.dart';
export 'home_model.dart';


import 'package:keraltyApp/app_state.dart';


class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  late HomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await actions.lockOrientation();
      if (!loggedIn) {
        context.pushNamed('Start');
      }
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

    const textStyle = TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.normal,
      fontFamily: "Ancizar sans",
      fontSize: 18,
    );

    return Scaffold(
      key: scaffoldKey,
      resizeToAvoidBottomInset: false,
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
          'Hola, ${FFAppState().userName}',
          style: FlutterFlowTheme.of(context).headlineMedium.override(
                fontFamily: 'Ancizar sans',
                color: Colors.white,
                fontSize: 22.0,
                useGoogleFonts: false,
              ),
        ),
        actions: const [],
        centerTitle: true,
        elevation: 2.0,
      ),
      body: SingleChildScrollView(
        // alignment: const AlignmentDirectional(0.0, 0.0),
        child: Container(
          width: MediaQuery.sizeOf(context).width * 1.0,
          height: MediaQuery.sizeOf(context).height * 1.0,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF00b4e3), Color(0xFF00b4e3)],
              stops: [1.0, 1.0],
              begin: AlignmentDirectional(0.0, -1.0),
              end: AlignmentDirectional(0, 1.0),
            ),
            shape: BoxShape.rectangle,
          ),
          alignment: const AlignmentDirectional(0.0, 0.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: MediaQuery.sizeOf(context).height * 0.9,
                  decoration: const BoxDecoration(),
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: MediaQuery.sizeOf(context).height * 0.3,
                            decoration: const BoxDecoration(
                              shape: BoxShape.rectangle,
                            ),
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Align(
                                  alignment:
                                      const AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 40.0, 0.0, 0.0),
                                    child: FlutterFlowIconButton(
                                      borderRadius: 100.0,
                                      borderWidth: 0.0,
                                      buttonSize:
                                          MediaQuery.sizeOf(context).width *
                                              0.3,
                                      fillColor:
                                          FlutterFlowTheme.of(context).tertiary,
                                      icon: Icon(
                                        FFIcons.kuser,
                                        color: FlutterFlowTheme.of(context)
                                            .secondary,
                                        size: 80.0,
                                      ),
                                      onPressed: () async {
                                        context.pushNamed('Profile');
                                      },
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment:
                                      const AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.pushNamed('Profile');
                                      },
                                      child: Text(
                                        'Mi perfil',
                                        style: FlutterFlowTheme.of(context)
                                            .displayMedium
                                            .override(
                                              fontFamily: 'Ancizar sans',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 5.0, 0.0, 0.0),
                                  child: Text(
                                    'Acá podrás ver tus datos personales',
                                    style: textStyle,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: MediaQuery.sizeOf(context).height * 0.3,
                            decoration: const BoxDecoration(
                              shape: BoxShape.rectangle,
                            ),
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Align(
                                  alignment:
                                      const AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 40.0, 0.0, 0.0),
                                    child: FlutterFlowIconButton(
                                      borderColor: Colors.transparent,
                                      borderRadius: 100.0,
                                      borderWidth: 0.0,
                                      buttonSize:
                                          MediaQuery.sizeOf(context).width *
                                              0.3,
                                      fillColor:
                                          FlutterFlowTheme.of(context).tertiary,
                                      icon: Icon(
                                        Icons.date_range_outlined,
                                        color: FlutterFlowTheme.of(context)
                                            .secondary,
                                        size: 80.0,
                                      ),
                                      onPressed: () async {
                                        context.pushNamed('Events');
                                      },
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment:
                                      const AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.pushNamed('Events');
                                      },
                                      child: Text(
                                        'Proximos eventos',
                                        style: FlutterFlowTheme.of(context)
                                            .displayMedium
                                            .override(
                                              fontFamily: 'Ancizar sans',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 5.0, 0.0, 0.0),
                                  child: Text(
                                    'Aca podrás ver tus próximos eventos',
                                    textAlign: TextAlign.center,
                                    style: textStyle,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 1,
                            height: MediaQuery.sizeOf(context).height * 0.3,
                            decoration: const BoxDecoration(
                              shape: BoxShape.rectangle,
                            ),
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Align(
                                  alignment:
                                      const AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 40.0, 0.0, 0.0),
                                    child: FlutterFlowIconButton(
                                      borderColor: Colors.transparent,
                                      borderRadius: 100.0,
                                      borderWidth: 0.0,
                                      buttonSize:
                                          MediaQuery.sizeOf(context).width *
                                              0.3,
                                      fillColor:
                                          FlutterFlowTheme.of(context).tertiary,
                                      icon: Icon(
                                        Icons.medication,
                                        color: FlutterFlowTheme.of(context)
                                            .secondary,
                                        size: 70.0,
                                      ),
                                      onPressed: () async {
                                        context.pushNamed('EventsCloud');
                                      },
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment:
                                      const AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.pushNamed('Event');
                                      },
                                      child: Text(
                                        'Cápsulas',
                                        style: FlutterFlowTheme.of(context)
                                            .displayMedium
                                            .override(
                                              fontFamily: 'Ancizar sans',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 5.0, 0.0, 0.0),
                                  child: Text(
                                    'Acá podrás ver tus cápsulas informativas',
                                    textAlign: TextAlign.center,
                                    style: textStyle,
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
    );
  }
}
