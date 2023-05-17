import '/auth/auth_util.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_model.dart';
export 'home_model.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> with TickerProviderStateMixin {
  late HomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  final animationsMap = {
    'imageOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeModel());

    _model.pidpidController ??= TextEditingController(
        text: valueOrDefault<String>(
      functions.gerarpid(),
      '000',
    ));

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30.0,
          borderWidth: 1.0,
          buttonSize: 60.0,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
            size: 30.0,
          ),
          onPressed: () async {
            GoRouter.of(context).prepareAuthEvent();
            await signOut();

            context.goNamedAuth('login', mounted);
          },
        ),
        title: Text(
          'Home',
          style: FlutterFlowTheme.of(context).subtitle1.override(
                fontFamily: 'Montserrat',
                color: FlutterFlowTheme.of(context).primaryBtnText,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 2.0,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional(-0.12, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 10.0),
                      child: Image.network(
                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/icervicais-app-gx76fo/assets/vybu1m8pmq8x/Logo-icervicais-png.png',
                        width: 300.0,
                        height: 100.0,
                        fit: BoxFit.fill,
                      ).animateOnPageLoad(
                          animationsMap['imageOnPageLoadAnimation']!),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 0.05),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 100.0, 0.0, 0.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 15.0, 0.0, 15.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  FFAppState().update(() {
                                    FFAppState().nPid =
                                        int.parse(_model.pidpidController.text);
                                    FFAppState().site = '';
                                    FFAppState().colposcopista = '';
                                    FFAppState().nome = '';
                                    FFAppState().cpf = 0;
                                    FFAppState().cns = 0;
                                    FFAppState().contato = 0;
                                    FFAppState().hospital = '';
                                    FFAppState().medico = '';
                                    FFAppState().datanascimento = '';
                                    FFAppState().tipodevisita = '';
                                    FFAppState().dresultadocitologiaprevia = '';
                                    FFAppState().dresultadohistologiaprevia =
                                        '';
                                    FFAppState()
                                        .realizouaautocoletaparatestehpv = '';
                                    FFAppState().motivoautocoleta = '';
                                    FFAppState().opcaoacetobrancas = '';
                                    FFAppState().outrosespecificar = '';
                                    FFAppState().dimpressocolposcopica = '';
                                    FFAppState().adequabilidadeezonatransf = '';
                                    FFAppState().djectipo2 = '';
                                    FFAppState().dresultadohistopatologia = '';
                                    FFAppState().motivoautocoletahpv = '';
                                    FFAppState()
                                        .AcetobranasSupEsquerdoAnt12x3hr = 0;
                                    FFAppState()
                                        .AcetobranasInfEsquerdoPot3x6hr = 0;
                                    FFAppState()
                                        .AcetobranasSupDireitoAnt9x12hr = 0;
                                    FFAppState()
                                        .AcetobranasInfDireitoPost6x9hr = 0;
                                    FFAppState().areasacetobrancasnocanal = 0;
                                    FFAppState().obsacetobrancas = '';
                                    FFAppState().outrosacetobrancas = 0;
                                    FFAppState().motivocitologiahistopatologia =
                                        '';
                                    FFAppState()
                                        .outrosespecificarimpressaococolposcopica = '';
                                    FFAppState().motivodotipodevisitazt = '';
                                    FFAppState().opcaobiopsia = '';
                                    FFAppState().numerodefragmentosbiopsia = '';
                                    FFAppState().motivodenaorealizarbiopsia =
                                        '';
                                    FFAppState().numerodepecasbiopsia = '';
                                    FFAppState().img1 = '';
                                    FFAppState().img2 = '';
                                    FFAppState().img3 = '';
                                  });

                                  context.pushNamed(
                                    'cadastro_01',
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: TransitionInfo(
                                        hasTransition: true,
                                        transitionType:
                                            PageTransitionType.rightToLeft,
                                      ),
                                    },
                                  );
                                },
                                text: 'Cadastrar Paciente',
                                icon: Icon(
                                  Icons.person_add,
                                  color: Color(0xFF7B4F94),
                                  size: 30.0,
                                ),
                                options: FFButtonOptions(
                                  width: 280.0,
                                  height: 60.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBtnText,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .subtitle1
                                      .override(
                                        fontFamily: 'Montserrat',
                                        color: Color(0xFF7B4F94),
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                  borderSide: BorderSide(
                                    color: Color(0xFF7B4F94),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 15.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              context.pushNamed(
                                'listaparticipantes',
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: TransitionInfo(
                                    hasTransition: true,
                                    transitionType:
                                        PageTransitionType.leftToRight,
                                  ),
                                },
                              );
                            },
                            text: 'Visualizar Participantes',
                            icon: Icon(
                              Icons.list,
                              size: 30.0,
                            ),
                            options: FFButtonOptions(
                              width: 280.0,
                              height: 60.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color:
                                  FlutterFlowTheme.of(context).primaryBtnText,
                              textStyle:
                                  FlutterFlowTheme.of(context).title1.override(
                                        fontFamily: 'Montserrat',
                                        color: Color(0xFF7B4F94),
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                              borderSide: BorderSide(
                                color: Color(0xFF7B4F94),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 15.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              context.pushNamed(
                                'sincronizar',
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: TransitionInfo(
                                    hasTransition: true,
                                    transitionType: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 0),
                                  ),
                                },
                              );
                            },
                            text: 'Sincronizar dados',
                            icon: Icon(
                              Icons.cloud_upload_outlined,
                              size: 30.0,
                            ),
                            options: FFButtonOptions(
                              width: 280.0,
                              height: 60.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color:
                                  FlutterFlowTheme.of(context).primaryBtnText,
                              textStyle:
                                  FlutterFlowTheme.of(context).title1.override(
                                        fontFamily: 'Montserrat',
                                        color: Color(0xFF7B4F94),
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                              borderSide: BorderSide(
                                color: Color(0xFF7B4F94),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 50.0, 0.0, 0.0),
                          child: Text(
                            'Usúario:',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.normal,
                                    ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 0.0),
                          child: Text(
                            currentUserEmail,
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Montserrat',
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                          ),
                        ),
                        Container(
                          width: 1.0,
                          child: TextFormField(
                            controller: _model.pidpidController,
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: '[Some hint text...]',
                              hintStyle: FlutterFlowTheme.of(context).bodyText2,
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              errorBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              focusedErrorBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              filled: true,
                              fillColor:
                                  FlutterFlowTheme.of(context).primaryBtnText,
                            ),
                            style: FlutterFlowTheme.of(context).bodyText1,
                            textAlign: TextAlign.center,
                            validator: _model.pidpidControllerValidator
                                .asValidator(context),
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
