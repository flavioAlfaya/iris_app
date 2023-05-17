import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'cadastro06_model.dart';
export 'cadastro06_model.dart';

class Cadastro06Widget extends StatefulWidget {
  const Cadastro06Widget({Key? key}) : super(key: key);

  @override
  _Cadastro06WidgetState createState() => _Cadastro06WidgetState();
}

class _Cadastro06WidgetState extends State<Cadastro06Widget> {
  late Cadastro06Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Cadastro06Model());

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
            context.pop();
          },
        ),
        title: Text(
          'Cadastro de pacientes',
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
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30.0,
                          borderWidth: 0.0,
                          buttonSize: 50.0,
                          icon: Icon(
                            Icons.qr_code_outlined,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 30.0,
                          ),
                          onPressed: () async {
                            context.pushNamed('qrcode');
                          },
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                    child: Text(
                      'Adequabilidade e Zona de Transformação (ZT)/JEC',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Montserrat',
                            fontSize: 12.0,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FlutterFlowRadioButton(
                          options: [
                            'Satisfatório (ZT Tipo 1) (Visível e Ectocervical)',
                            'Satisfatório (ZT Tipo 2) (Ecto e Endocervical)',
                            'Insatisfatório'
                          ].toList(),
                          onChanged: (val) => setState(() =>
                              _model.radioAdequabilidadeezonatransfValue = val),
                          optionHeight: 25.0,
                          textStyle:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Montserrat',
                                    color: Colors.black,
                                  ),
                          selectedTextStyle:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Montserrat',
                                    color: Color(0xFF0C74FF),
                                  ),
                          buttonPosition: RadioButtonPosition.left,
                          direction: Axis.vertical,
                          radioButtonColor: Color(0xFF7B4F94),
                          inactiveRadioButtonColor: Color(0x8A000000),
                          toggleable: false,
                          horizontalAlignment: WrapAlignment.center,
                          verticalAlignment: WrapCrossAlignment.start,
                        ),
                      ],
                    ),
                  ),
                  if (_model.radioAdequabilidadeezonatransfValue ==
                      'Satisfatório (ZT Tipo 2) (Ecto e endocervical)')
                    Align(
                      alignment: AlignmentDirectional(0.02, -0.69),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                        child: FlutterFlowDropDown<String>(
                          options: FFAppState().jectipo2.toList(),
                          onChanged: (val) =>
                              setState(() => _model.listaJectipo2Value = val),
                          width: 300.0,
                          height: 50.0,
                          textStyle:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Montserrat',
                                    color: Colors.black,
                                  ),
                          hintText: 'JEC (tipo 2)',
                          fillColor: Colors.white,
                          elevation: 2.0,
                          borderColor: Colors.transparent,
                          borderWidth: 0.0,
                          borderRadius: 10.0,
                          margin: EdgeInsetsDirectional.fromSTEB(
                              12.0, 4.0, 12.0, 4.0),
                          hidesUnderline: true,
                        ),
                      ),
                    ),
                  if (_model.radioAdequabilidadeezonatransfValue ==
                      'Insatisfatório')
                    Align(
                      alignment: AlignmentDirectional(0.02, -0.69),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                        child: FlutterFlowDropDown<String>(
                          options: FFAppState().motivoinsatisfatorio.toList(),
                          onChanged: (val) => setState(() =>
                              _model.listaMotivodotipodevisitaztValue = val),
                          width: 300.0,
                          height: 50.0,
                          textStyle:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Montserrat',
                                    color: Colors.black,
                                  ),
                          hintText: 'Motivo Insatisfatorio',
                          fillColor: Colors.white,
                          elevation: 2.0,
                          borderColor: Colors.transparent,
                          borderWidth: 0.0,
                          borderRadius: 10.0,
                          margin: EdgeInsetsDirectional.fromSTEB(
                              12.0, 4.0, 12.0, 4.0),
                          hidesUnderline: true,
                        ),
                      ),
                    ),
                  Container(
                    height: 200.0,
                    decoration: BoxDecoration(),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 70.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          FFButtonWidget(
                            onPressed: () async {
                              context.pop();
                            },
                            text: 'Voltar',
                            icon: Icon(
                              Icons.arrow_back_ios,
                              size: 15.0,
                            ),
                            options: FFButtonOptions(
                              width: 130.0,
                              height: 40.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: Color(0xFFB9B9B9),
                              textStyle: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
                                    fontFamily: 'Montserrat',
                                    color: Colors.white,
                                  ),
                              elevation: 2.0,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 0.0, 0.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                context.pushNamed(
                                  'cadastro_07_foto1',
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: TransitionInfo(
                                      hasTransition: true,
                                      transitionType: PageTransitionType.fade,
                                      duration: Duration(milliseconds: 0),
                                    ),
                                  },
                                );

                                FFAppState().update(() {
                                  FFAppState().adequabilidadeezonatransf =
                                      _model
                                          .radioAdequabilidadeezonatransfValue!;
                                  FFAppState().djectipo2 =
                                      _model.listaJectipo2Value!;
                                  FFAppState().motivodotipodevisitazt =
                                      _model.listaMotivodotipodevisitaztValue!;
                                });
                              },
                              text: 'Próximo',
                              options: FFButtonOptions(
                                width: 130.0,
                                height: 40.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                                textStyle: FlutterFlowTheme.of(context)
                                    .subtitle2
                                    .override(
                                      fontFamily: 'Montserrat',
                                      color: Colors.white,
                                    ),
                                elevation: 2.0,
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
