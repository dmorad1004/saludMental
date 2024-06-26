import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'signin_model.dart';
export 'signin_model.dart';

import 'package:keraltyApp/app_state.dart';


class SigninWidget extends StatefulWidget {
  const SigninWidget({super.key});

  @override
  State<SigninWidget> createState() => _SigninWidgetState();
}

class _SigninWidgetState extends State<SigninWidget> {
  late SigninModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SigninModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await actions.lockOrientation();
    });

    _model.textFieldNameController ??= TextEditingController();
    _model.textFieldNameFocusNode ??= FocusNode();

    _model.textFieldEmailController ??= TextEditingController();
    _model.textFieldEmailFocusNode ??= FocusNode();

    _model.textFieldPhoneController ??= TextEditingController();
    _model.textFieldPhoneFocusNode ??= FocusNode();

    _model.textFieldPassController ??= TextEditingController();
    _model.textFieldPassFocusNode ??= FocusNode();

    _model.textFieldPass2Controller ??= TextEditingController();
    _model.textFieldPass2FocusNode ??= FocusNode();

    _model.textFieldCodeController ??= TextEditingController();
    _model.textFieldCodeFocusNode ??= FocusNode();
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
        body: Align(
          alignment: const AlignmentDirectional(0.0, 0.0),
          child: Container(
            width: MediaQuery.sizeOf(context).width * 1.0,
            height: MediaQuery.sizeOf(context).height * 1.0,
            decoration: BoxDecoration(
              gradient: FlutterFlowTheme.of(context).gradientsyle,
              shape: BoxShape.rectangle,
            ),
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: MediaQuery.sizeOf(context).height * 0.15,
                    decoration: const BoxDecoration(),
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          0.0, 15.0, 0.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed('Start');
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: CachedNetworkImage(
                            fadeInDuration: const Duration(milliseconds: 500),
                            fadeOutDuration: const Duration(milliseconds: 500),
                            imageUrl:
                                'https://qutusmetgkdrttcoevld.supabase.co/storage/v1/object/public/images/logo/logoIGEC.png',
                            width: MediaQuery.sizeOf(context).width * 0.3,
                            height: MediaQuery.sizeOf(context).height * 0.3,
                            fit: BoxFit.contain,
                            errorWidget: (context, error, stackTrace) =>
                                Image.asset(
                              'assets/images/logoIGEC.png',
                              width: MediaQuery.sizeOf(context).width * 0.3,
                              height: MediaQuery.sizeOf(context).height * 0.3,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: MediaQuery.sizeOf(context).height * 0.75,
                    decoration: const BoxDecoration(),
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 0.8,
                      height: MediaQuery.sizeOf(context).height * 1.0,
                      decoration: BoxDecoration(
                        color: const Color(0xFFE6F0F8),
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Stack(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              children: [
                                Align(
                                  alignment:
                                      const AlignmentDirectional(-0.8, 0.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      context.pushNamed(
                                        'Login',
                                        extra: <String, dynamic>{
                                          kTransitionInfoKey:
                                              const TransitionInfo(
                                            hasTransition: true,
                                            transitionType:
                                                PageTransitionType.fade,
                                            duration: Duration(milliseconds: 0),
                                          ),
                                        },
                                      );
                                    },
                                    text: 'Ingresar',
                                    options: FFButtonOptions(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.4,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.04,
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 24.0, 0.0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: FlutterFlowTheme.of(context)
                                          .secondary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Ancizar sans',
                                            color: FlutterFlowTheme.of(context)
                                                .tertiary,
                                            useGoogleFonts: false,
                                          ),
                                      elevation: 3.0,
                                      borderSide: const BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(40.0),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment:
                                      const AlignmentDirectional(0.73, 0.0),
                                  child: FFButtonWidget(
                                    onPressed: () {},
                                    text: 'Registrarme',
                                    options: FFButtonOptions(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.415,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.04,
                                      padding: const EdgeInsets.all(0.0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: FlutterFlowTheme.of(context)
                                          .buttonColor,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Ancizar sans',
                                            color: FlutterFlowTheme.of(context)
                                                .secondary,
                                            useGoogleFonts: false,
                                          ),
                                      elevation: 3.0,
                                      borderSide: const BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(40.0),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Form(
                              key: _model.formKey,
                              autovalidateMode: AutovalidateMode.always,
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      width: 100.0,
                                      decoration: const BoxDecoration(),
                                      alignment:
                                          const AlignmentDirectional(0.0, 0.0),
                                    ),
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(0.0, -1.0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional
                                            .fromSTEB(8.0, 0.0, 8.0, 0.0),
                                        child: SizedBox(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.7,
                                          child: TextFormField(
                                            controller:
                                                _model.textFieldNameController,
                                            focusNode:
                                                _model.textFieldNameFocusNode,
                                            onChanged: (_) =>
                                                EasyDebounce.debounce(
                                              '_model.textFieldNameController',
                                              const Duration(
                                                  milliseconds: 2000),
                                              () => setState(() {}),
                                            ),
                                            autofocus: true,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              isDense: true,
                                              labelText: 'Nombre:',
                                              labelStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .labelLarge
                                                  .override(
                                                    fontFamily: 'Ancizar sans',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    fontSize: 14.0,
                                                    useGoogleFonts: false,
                                                  ),
                                              hintStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Ancizar sans',
                                                        useGoogleFonts: false,
                                                        lineHeight: 2.5,
                                                      ),
                                              enabledBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              focusedBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              errorBorder: UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              focusedErrorBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              suffixIcon: _model
                                                      .textFieldNameController!
                                                      .text
                                                      .isNotEmpty
                                                  ? InkWell(
                                                      onTap: () async {
                                                        _model
                                                            .textFieldNameController
                                                            ?.clear();
                                                        setState(() {});
                                                      },
                                                      child: Icon(
                                                        Icons.clear,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        size: 15.0,
                                                      ),
                                                    )
                                                  : null,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Ancizar sans',
                                                  fontSize: 14.0,
                                                  useGoogleFonts: false,
                                                ),
                                            textAlign: TextAlign.center,
                                            validator: _model
                                                .textFieldNameControllerValidator
                                                .asValidator(context),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 100.0,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.02,
                                      decoration: const BoxDecoration(),
                                      alignment:
                                          const AlignmentDirectional(0.0, 0.0),
                                    ),
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(0.0, -1.0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional
                                            .fromSTEB(8.0, 0.0, 8.0, 0.0),
                                        child: SizedBox(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.7,
                                          child: TextFormField(
                                            controller:
                                                _model.textFieldEmailController,
                                            focusNode:
                                                _model.textFieldEmailFocusNode,
                                            onChanged: (_) =>
                                                EasyDebounce.debounce(
                                              '_model.textFieldEmailController',
                                              const Duration(
                                                  milliseconds: 2000),
                                              () => setState(() {}),
                                            ),
                                            autofocus: true,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              isDense: true,
                                              labelText: 'Correo electrónico:',
                                              labelStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .labelLarge
                                                  .override(
                                                    fontFamily: 'Ancizar sans',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    fontSize: 14.0,
                                                    useGoogleFonts: false,
                                                  ),
                                              hintStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Ancizar sans',
                                                        useGoogleFonts: false,
                                                        lineHeight: 2.5,
                                                      ),
                                              enabledBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              focusedBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              errorBorder: UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              focusedErrorBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              suffixIcon: _model
                                                      .textFieldEmailController!
                                                      .text
                                                      .isNotEmpty
                                                  ? InkWell(
                                                      onTap: () async {
                                                        _model
                                                            .textFieldEmailController
                                                            ?.clear();
                                                        setState(() {});
                                                      },
                                                      child: Icon(
                                                        Icons.clear,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        size: 15.0,
                                                      ),
                                                    )
                                                  : null,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Ancizar sans',
                                                  fontSize: 14.0,
                                                  useGoogleFonts: false,
                                                ),
                                            textAlign: TextAlign.center,
                                            validator: _model
                                                .textFieldEmailControllerValidator
                                                .asValidator(context),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 100.0,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.03,
                                      decoration: const BoxDecoration(),
                                      alignment:
                                          const AlignmentDirectional(0.0, 0.0),
                                    ),
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(0.0, -1.0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional
                                            .fromSTEB(8.0, 0.0, 8.0, 0.0),
                                        child: SizedBox(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.7,
                                          child: TextFormField(
                                            controller:
                                                _model.textFieldPhoneController,
                                            focusNode:
                                                _model.textFieldPhoneFocusNode,
                                            onChanged: (_) =>
                                                EasyDebounce.debounce(
                                              '_model.textFieldPhoneController',
                                              const Duration(
                                                  milliseconds: 2000),
                                              () => setState(() {}),
                                            ),
                                            autofocus: true,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              isDense: true,
                                              labelText: 'Teléfono:',
                                              labelStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .labelLarge
                                                  .override(
                                                    fontFamily: 'Ancizar sans',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    fontSize: 14.0,
                                                    useGoogleFonts: false,
                                                  ),
                                              hintStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Ancizar sans',
                                                        useGoogleFonts: false,
                                                        lineHeight: 2.5,
                                                      ),
                                              enabledBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              focusedBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              errorBorder: UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              focusedErrorBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              suffixIcon: _model
                                                      .textFieldPhoneController!
                                                      .text
                                                      .isNotEmpty
                                                  ? InkWell(
                                                      onTap: () async {
                                                        _model
                                                            .textFieldPhoneController
                                                            ?.clear();
                                                        setState(() {});
                                                      },
                                                      child: Icon(
                                                        Icons.clear,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        size: 15.0,
                                                      ),
                                                    )
                                                  : null,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Ancizar sans',
                                                  fontSize: 14.0,
                                                  useGoogleFonts: false,
                                                ),
                                            textAlign: TextAlign.center,
                                            validator: _model
                                                .textFieldPhoneControllerValidator
                                                .asValidator(context),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 100.0,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.02,
                                      decoration: const BoxDecoration(),
                                      alignment:
                                          const AlignmentDirectional(0.0, 0.0),
                                    ),
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(0.0, -1.0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional
                                            .fromSTEB(8.0, 0.0, 8.0, 0.0),
                                        child: SizedBox(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.7,
                                          child: TextFormField(
                                            controller:
                                                _model.textFieldPassController,
                                            focusNode:
                                                _model.textFieldPassFocusNode,
                                            autofocus: true,
                                            obscureText:
                                                !_model.textFieldPassVisibility,
                                            decoration: InputDecoration(
                                              isDense: true,
                                              labelText: 'Contraseña:',
                                              labelStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .labelLarge
                                                  .override(
                                                    fontFamily: 'Ancizar sans',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    fontSize: 14.0,
                                                    useGoogleFonts: false,
                                                  ),
                                              hintStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Ancizar sans',
                                                        useGoogleFonts: false,
                                                        lineHeight: 2.5,
                                                      ),
                                              enabledBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              focusedBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              errorBorder: UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              focusedErrorBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              suffixIcon: InkWell(
                                                onTap: () => setState(
                                                  () => _model
                                                          .textFieldPassVisibility =
                                                      !_model
                                                          .textFieldPassVisibility,
                                                ),
                                                focusNode: FocusNode(
                                                    skipTraversal: true),
                                                child: Icon(
                                                  _model.textFieldPassVisibility
                                                      ? Icons
                                                          .visibility_outlined
                                                      : Icons
                                                          .visibility_off_outlined,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 15.0,
                                                ),
                                              ),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Ancizar sans',
                                                  fontSize: 14.0,
                                                  useGoogleFonts: false,
                                                ),
                                            textAlign: TextAlign.center,
                                            validator: _model
                                                .textFieldPassControllerValidator
                                                .asValidator(context),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 100.0,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.02,
                                      decoration: const BoxDecoration(),
                                      alignment:
                                          const AlignmentDirectional(0.0, 0.0),
                                    ),
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(0.0, -1.0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional
                                            .fromSTEB(8.0, 0.0, 8.0, 0.0),
                                        child: SizedBox(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.7,
                                          child: TextFormField(
                                            controller:
                                                _model.textFieldPass2Controller,
                                            focusNode:
                                                _model.textFieldPass2FocusNode,
                                            autofocus: true,
                                            obscureText: !_model
                                                .textFieldPass2Visibility,
                                            decoration: InputDecoration(
                                              isDense: true,
                                              labelText:
                                                  'Confirmar contraseña:',
                                              labelStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .labelLarge
                                                  .override(
                                                    fontFamily: 'Ancizar sans',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    fontSize: 14.0,
                                                    useGoogleFonts: false,
                                                  ),
                                              hintStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Ancizar sans',
                                                        useGoogleFonts: false,
                                                        lineHeight: 2.5,
                                                      ),
                                              enabledBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              focusedBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              errorBorder: UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              focusedErrorBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              suffixIcon: InkWell(
                                                onTap: () => setState(
                                                  () => _model
                                                          .textFieldPass2Visibility =
                                                      !_model
                                                          .textFieldPass2Visibility,
                                                ),
                                                focusNode: FocusNode(
                                                    skipTraversal: true),
                                                child: Icon(
                                                  _model.textFieldPass2Visibility
                                                      ? Icons
                                                          .visibility_outlined
                                                      : Icons
                                                          .visibility_off_outlined,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 15.0,
                                                ),
                                              ),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Ancizar sans',
                                                  fontSize: 14.0,
                                                  useGoogleFonts: false,
                                                ),
                                            textAlign: TextAlign.center,
                                            validator: _model
                                                .textFieldPass2ControllerValidator
                                                .asValidator(context),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 100.0,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.02,
                                      decoration: const BoxDecoration(),
                                    ),
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(0.0, -1.0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional
                                            .fromSTEB(8.0, 0.0, 8.0, 0.0),
                                        child: SizedBox(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.7,
                                          child: TextFormField(
                                            controller:
                                                _model.textFieldCodeController,
                                            focusNode:
                                                _model.textFieldCodeFocusNode,
                                            onChanged: (_) =>
                                                EasyDebounce.debounce(
                                              '_model.textFieldCodeController',
                                              const Duration(
                                                  milliseconds: 2000),
                                              () => setState(() {}),
                                            ),
                                            autofocus: true,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              isDense: true,
                                              labelText: 'Código:',
                                              labelStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .labelLarge
                                                  .override(
                                                    fontFamily: 'Ancizar sans',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    fontSize: 14.0,
                                                    useGoogleFonts: false,
                                                  ),
                                              hintStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Ancizar sans',
                                                        useGoogleFonts: false,
                                                        lineHeight: 2.5,
                                                      ),
                                              enabledBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              focusedBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              errorBorder: UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              focusedErrorBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              suffixIcon: _model
                                                      .textFieldCodeController!
                                                      .text
                                                      .isNotEmpty
                                                  ? InkWell(
                                                      onTap: () async {
                                                        _model
                                                            .textFieldCodeController
                                                            ?.clear();
                                                        setState(() {});
                                                      },
                                                      child: Icon(
                                                        Icons.clear,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        size: 15.0,
                                                      ),
                                                    )
                                                  : null,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Ancizar sans',
                                                  fontSize: 14.0,
                                                  useGoogleFonts: false,
                                                ),
                                            textAlign: TextAlign.center,
                                            validator: _model
                                                .textFieldCodeControllerValidator
                                                .asValidator(context),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 100.0,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.04,
                                      decoration: const BoxDecoration(),
                                      alignment:
                                          const AlignmentDirectional(0.0, 0.0),
                                    ),
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(0.0, 0.0),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          var shouldSetState = false;
                                          if (_model.formKey.currentState ==
                                                  null ||
                                              !_model.formKey.currentState!
                                                  .validate()) {
                                            return;
                                          }
                                          if (_model.textFieldPassController
                                                  .text ==
                                              _model.textFieldPass2Controller
                                                  .text) {
                                            _model.getCodeByCodeResponse =
                                                await GetCodeByCodeCall.call(
                                              code: _model
                                                  .textFieldCodeController.text,
                                            );
                                            shouldSetState = true;
                                            if (GetCodeByCodeCall.id(
                                                  (_model.getCodeByCodeResponse
                                                          ?.jsonBody ??
                                                      ''),
                                                ) !=
                                                null) {
                                              _model.getUserByCodeResponse =
                                                  await GetUserByCodeIdCall
                                                      .call(
                                                codeId: GetCodeByCodeCall.id(
                                                  (_model.getCodeByCodeResponse
                                                          ?.jsonBody ??
                                                      ''),
                                                ),
                                              );
                                              shouldSetState = true;
                                              if (GetUserByCodeIdCall.id(
                                                    (_model.getUserByCodeResponse
                                                            ?.jsonBody ??
                                                        ''),
                                                  ) ==
                                                  null) {
                                                GoRouter.of(context)
                                                    .prepareAuthEvent();
                                                if (_model
                                                        .textFieldPassController
                                                        .text !=
                                                    _model
                                                        .textFieldPass2Controller
                                                        .text) {
                                                  ScaffoldMessenger.of(context)
                                                      .showSnackBar(
                                                    const SnackBar(
                                                      content: Text(
                                                        'Passwords don\'t match!',
                                                      ),
                                                    ),
                                                  );
                                                  return;
                                                }

                                                final user = await authManager
                                                    .createAccountWithEmail(
                                                  context,
                                                  _model
                                                      .textFieldEmailController
                                                      .text,
                                                  _model.textFieldPassController
                                                      .text,
                                                );
                                                if (user == null) {
                                                  return;
                                                }

                                                await UsersTable().insert({
                                                  'id': currentUserUid,
                                                  'email': _model
                                                      .textFieldEmailController
                                                      .text,
                                                  'created_at':
                                                      supaSerialize<DateTime>(
                                                          getCurrentTimestamp),
                                                  'name': _model
                                                      .textFieldNameController
                                                      .text,
                                                  'phone_number': _model
                                                      .textFieldPhoneController
                                                      .text,
                                                  'status_id': 1,
                                                  'updated_at':
                                                      supaSerialize<DateTime>(
                                                          getCurrentTimestamp),
                                                  'medical_condition_id': 1,
                                                  'code_id':
                                                      GetCodeByCodeCall.id(
                                                    (_model.getCodeByCodeResponse
                                                            ?.jsonBody ??
                                                        ''),
                                                  ),
                                                });
                                                setState(() {
                                                  FFAppState().userId =
                                                      currentUserUid;
                                                  FFAppState().userName = _model
                                                      .textFieldNameController
                                                      .text;
                                                  FFAppState().userPhome = _model
                                                      .textFieldPhoneController
                                                      .text;
                                                  FFAppState().userEmail = _model
                                                      .textFieldEmailController
                                                      .text;
                                                  FFAppState().userCode = _model
                                                      .textFieldCodeController
                                                      .text;
                                                  FFAppState().userStatus = 1;
                                                });

                                                context.goNamedAuth(
                                                    'Home', context.mounted);

                                                if (shouldSetState) {
                                                  setState(() {});
                                                }
                                                return;
                                              } else {
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(
                                                  SnackBar(
                                                    content: Text(
                                                      'Código actualmente en uso',
                                                      style: TextStyle(
                                                        fontFamily:
                                                            'Ancizar sans',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                      ),
                                                    ),
                                                    duration: const Duration(
                                                        milliseconds: 2000),
                                                    backgroundColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .blancoFondo,
                                                  ),
                                                );
                                                if (shouldSetState) {
                                                  setState(() {});
                                                }
                                                return;
                                              }
                                            } else {
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                SnackBar(
                                                  content: Text(
                                                    'Código no encontrado',
                                                    style: TextStyle(
                                                      fontFamily:
                                                          'Ancizar sans',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                    ),
                                                  ),
                                                  duration: const Duration(
                                                      milliseconds: 2100),
                                                  backgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .blancoFondo,
                                                ),
                                              );
                                              if (shouldSetState) {
                                                setState(() {});
                                              }
                                              return;
                                            }
                                          } else {
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  'Las contraseñas no coinciden',
                                                  style: TextStyle(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                  ),
                                                ),
                                                duration: const Duration(
                                                    milliseconds: 4000),
                                                backgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .blancoFondo,
                                              ),
                                            );
                                            if (shouldSetState) {
                                              setState(() {});
                                            }
                                            return;
                                          }

                                          if (shouldSetState) setState(() {});
                                        },
                                        text: 'Registrarme',
                                        options: FFButtonOptions(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.5,
                                          height: 50.0,
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(24.0, 0.0, 24.0, 0.0),
                                          iconPadding:
                                              const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .secondary,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .displayMedium,
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
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: MediaQuery.sizeOf(context).height * 0.1,
                    decoration: const BoxDecoration(),
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 20.0, 0.0, 40.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed('Login');
                                },
                                child: Text(
                                  '¿Ya tienes una cuenta?  Ingresar',
                                  textAlign: TextAlign.center,
                                  style:
                                      FlutterFlowTheme.of(context).displaySmall,
                                ),
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
      ),
    );
  }
}
