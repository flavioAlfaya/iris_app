import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'cadastro04_model.dart';
export 'cadastro04_model.dart';

class Cadastro04Widget extends StatefulWidget {
  const Cadastro04Widget({Key? key}) : super(key: key);

  @override
  _Cadastro04WidgetState createState() => _Cadastro04WidgetState();
}

class _Cadastro04WidgetState extends State<Cadastro04Widget> {
  late Cadastro04Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Cadastro04Model());

    _model.caixaMotivoautocoletaController ??= TextEditingController();
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
                      'Realizou a Autocoleta para Teste de HPV',
                      style: FlutterFlowTheme.of(context).bodyText1,
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
                          options: ['Sim', 'Não', 'Não se Aplica'].toList(),
                          onChanged: (val) =>
                              setState(() => _model.radioAutocoletaValue = val),
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
                  if (_model.radioAutocoletaValue != 'Sim')
                    Align(
                      alignment: AlignmentDirectional(0.0, -0.42),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                        child: Container(
                          width: 300.0,
                          child: TextFormField(
                            controller: _model.caixaMotivoautocoletaController,
                            autofocus: true,
                            textCapitalization: TextCapitalization.none,
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: 'Motivo',
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
                            style: FlutterFlowTheme.of(context)
                                .bodyText1
                                .override(
                                  fontFamily: 'Montserrat',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  letterSpacing: 1.0,
                                  fontWeight: FontWeight.w300,
                                ),
                            textAlign: TextAlign.center,
                            validator: _model
                                .caixaMotivoautocoletaControllerValidator
                                .asValidator(context),
                          ),
                        ),
                      ),
                    ),
                  if (_model.radioAutocoletaValue == 'Sim')
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          15.0, 15.0, 15.0, 15.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          _model.bSIQRCode =
                              await FlutterBarcodeScanner.scanBarcode(
                            '#C62828', // scanning line color
                            'Cancelar', // cancel button text
                            true, // whether to show the flash icon
                            ScanMode.BARCODE,
                          );

                          setState(() {});
                        },
                        text: 'Scaner QR Code',
                        icon: Icon(
                          Icons.qr_code_outlined,
                          size: 15.0,
                        ),
                        options: FFButtonOptions(
                          width: 250.0,
                          height: 40.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primaryColor,
                          textStyle:
                              FlutterFlowTheme.of(context).subtitle2.override(
                                    fontFamily: 'Montserrat',
                                    color: Colors.white,
                                  ),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                  if (_model.radioAutocoletaValue == 'Sim')
                    Text(
                      'BSI: ${valueOrDefault<String>(
                        _model.bSIQRCode,
                        '00000',
                      )}',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Montserrat',
                            fontSize: 18.0,
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
                                if (_model.radioAutocoletaValue == null ||
                                    _model.radioAutocoletaValue == '') {
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: Text('Atenção'),
                                        content:
                                            Text('Preencha todos os itens'),
                                        actions: [
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                alertDialogContext),
                                            child: Text('Ok'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                } else {
                                  FFAppState().update(() {
                                    FFAppState()
                                            .realizouaautocoletaparatestehpv =
                                        _model.radioAutocoletaValue!;
                                    FFAppState().motivoautocoletahpv = _model
                                        .caixaMotivoautocoletaController.text;
                                  });

                                  context.pushNamed(
                                    'cadastro_05',
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
