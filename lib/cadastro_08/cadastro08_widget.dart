import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'cadastro08_model.dart';
export 'cadastro08_model.dart';

class Cadastro08Widget extends StatefulWidget {
  const Cadastro08Widget({Key? key}) : super(key: key);

  @override
  _Cadastro08WidgetState createState() => _Cadastro08WidgetState();
}

class _Cadastro08WidgetState extends State<Cadastro08Widget> {
  late Cadastro08Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Cadastro08Model());

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
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Participante',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Montserrat',
                                    color: Color(0xFF7B4F94),
                                    fontSize: 18.0,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 2.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 5.0, 0.0),
                          child: Text(
                            'Nome:',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Montserrat',
                                      fontSize: 18.0,
                                    ),
                          ),
                        ),
                        Text(
                          FFAppState().nome,
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Montserrat',
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 5.0, 20.0, 2.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 5.0, 0.0),
                          child: Text(
                            'PID:',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Montserrat',
                                      fontSize: 18.0,
                                    ),
                          ),
                        ),
                        Text(
                          valueOrDefault<String>(
                            FFAppState().nPid.toString(),
                            '000',
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Montserrat',
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 5.0, 20.0, 2.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 5.0, 0.0),
                          child: Text(
                            'Data de nasc.:',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Montserrat',
                                      fontSize: 18.0,
                                    ),
                          ),
                        ),
                        Text(
                          FFAppState().datanascimento,
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Montserrat',
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 5.0, 20.0, 2.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 5.0, 0.0),
                          child: Text(
                            'Tipo de Visita:',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Montserrat',
                                      fontSize: 18.0,
                                    ),
                          ),
                        ),
                        Text(
                          FFAppState().tipodevisita,
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Montserrat',
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Fotos:',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Montserrat',
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              5.0, 5.0, 5.0, 5.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image.network(
                              FFAppState().img1,
                              width: 100.0,
                              height: 100.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              5.0, 5.0, 5.0, 5.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image.network(
                              FFAppState().img2,
                              width: 100.0,
                              height: 100.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              5.0, 5.0, 5.0, 5.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image.network(
                              FFAppState().img3,
                              width: 100.0,
                              height: 100.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [],
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
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
                                if (FFAppState().tipodevisita == 'Tratamento') {
                                  context.pushNamed(
                                    'cadastro_10',
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: TransitionInfo(
                                        hasTransition: true,
                                        transitionType:
                                            PageTransitionType.rightToLeft,
                                      ),
                                    },
                                  );
                                } else {
                                  context.pushNamed(
                                    'cadastro_09',
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: TransitionInfo(
                                        hasTransition: true,
                                        transitionType:
                                            PageTransitionType.rightToLeft,
                                      ),
                                    },
                                  );
                                }
                              },
                              text: FFAppState().tipodevisita == 'Tratamento'
                                  ? 'Excisão'
                                  : 'Biópsia',
                              options: FFButtonOptions(
                                width: 150.0,
                                height: 40.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Montserrat',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
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
