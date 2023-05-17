import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'cadastro09_model.dart';
export 'cadastro09_model.dart';

class Cadastro09Widget extends StatefulWidget {
  const Cadastro09Widget({Key? key}) : super(key: key);

  @override
  _Cadastro09WidgetState createState() => _Cadastro09WidgetState();
}

class _Cadastro09WidgetState extends State<Cadastro09Widget> {
  late Cadastro09Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Cadastro09Model());

    _model.caixaNumerodefragmentosbiopsiaController ??= TextEditingController();
    _model.caixaMotivodenaorealizarbiopsiaController ??=
        TextEditingController();
    _model.caixaNumerodepecasbiopsiaController ??= TextEditingController();
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
                          'Informar Biópsia',
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
                          FFAppState().tipodevisita == 'Tratamento'
                              ? 'Excisão'
                              : 'Biópsia',
                          style: FlutterFlowTheme.of(context).bodyText1,
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
                        FlutterFlowRadioButton(
                          options: ['Sim', 'Ver e tratar'].toList(),
                          onChanged: (val) => setState(
                              () => _model.radioOpcaobiopsiaValue = val),
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
                          direction: Axis.horizontal,
                          radioButtonColor: Colors.blue,
                          inactiveRadioButtonColor: Color(0x8A000000),
                          toggleable: false,
                          horizontalAlignment: WrapAlignment.start,
                          verticalAlignment: WrapCrossAlignment.start,
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
                        if (_model.radioOpcaobiopsiaValue == 'Sim')
                          Expanded(
                            child: Align(
                              alignment: AlignmentDirectional(0.0, -0.42),
                              child: Container(
                                width: 300.0,
                                child: TextFormField(
                                  controller: _model
                                      .caixaNumerodefragmentosbiopsiaController,
                                  autofocus: true,
                                  textCapitalization: TextCapitalization.none,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    hintText: 'Número de Fragmentos',
                                    hintStyle:
                                        FlutterFlowTheme.of(context).bodyText2,
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
                                    fillColor: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Montserrat',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        letterSpacing: 1.0,
                                        fontWeight: FontWeight.w300,
                                      ),
                                  textAlign: TextAlign.center,
                                  keyboardType: TextInputType.number,
                                  validator: _model
                                      .caixaNumerodefragmentosbiopsiaControllerValidator
                                      .asValidator(context),
                                ),
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
                      children: [
                        if (_model.radioOpcaobiopsiaValue == 'Não')
                          Expanded(
                            child: Align(
                              alignment: AlignmentDirectional(0.0, -0.42),
                              child: Container(
                                width: 300.0,
                                child: TextFormField(
                                  controller: _model
                                      .caixaMotivodenaorealizarbiopsiaController,
                                  autofocus: true,
                                  textCapitalization: TextCapitalization.none,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    hintText: 'Motivo de não realização',
                                    hintStyle:
                                        FlutterFlowTheme.of(context).bodyText2,
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
                                    fillColor: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Montserrat',
                                        letterSpacing: 1.0,
                                      ),
                                  textAlign: TextAlign.center,
                                  validator: _model
                                      .caixaMotivodenaorealizarbiopsiaControllerValidator
                                      .asValidator(context),
                                ),
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
                      children: [
                        if (_model.radioOpcaobiopsiaValue == 'Ver e tratar')
                          Expanded(
                            child: Align(
                              alignment: AlignmentDirectional(0.0, -0.42),
                              child: Container(
                                width: 300.0,
                                child: TextFormField(
                                  controller: _model
                                      .caixaNumerodepecasbiopsiaController,
                                  autofocus: true,
                                  textCapitalization: TextCapitalization.none,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    hintText: 'Número de Peças',
                                    hintStyle:
                                        FlutterFlowTheme.of(context).bodyText2,
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
                                    fillColor: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Montserrat',
                                        letterSpacing: 1.0,
                                      ),
                                  textAlign: TextAlign.center,
                                  keyboardType: TextInputType.number,
                                  validator: _model
                                      .caixaNumerodepecasbiopsiaControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                            ),
                          ),
                      ],
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
                                final pacientesCreateData = {
                                  ...createPacientesRecordData(
                                    site: FFAppState().site,
                                    colposcopia: FFAppState().colposcopista,
                                    nome: FFAppState().nome,
                                    cpf: valueOrDefault<String>(
                                      FFAppState().cpf.toString(),
                                      '00000000000',
                                    ),
                                    cns: FFAppState().cns,
                                    contato: FFAppState().contato,
                                    hospital: FFAppState().hospital,
                                    medico: FFAppState().medico,
                                    datanascimento: FFAppState().datanascimento,
                                    tipdevisita: FFAppState().tipodevisita,
                                    dresultadocitologiaprevia:
                                        FFAppState().dresultadocitologiaprevia,
                                    dresultadohistologiaprevia:
                                        FFAppState().dresultadohistologiaprevia,
                                    realizouaautocoletaparatestehpv:
                                        FFAppState()
                                            .realizouaautocoletaparatestehpv,
                                    motivoautocoleta:
                                        FFAppState().motivoautocoleta,
                                    opcaoacetobrancas:
                                        FFAppState().opcaoacetobrancas,
                                    outrosespecificar:
                                        FFAppState().outrosespecificar,
                                    dimpressocolposcopica:
                                        FFAppState().dimpressocolposcopica,
                                    adequabilidadezonatransf:
                                        FFAppState().adequabilidadeezonatransf,
                                    djectipo2: FFAppState().djectipo2,
                                    dresultadohistopatologia:
                                        FFAppState().dresultadohistopatologia,
                                    urlimages: '',
                                    nPid: FFAppState().nPid,
                                    motivoautocoletahpv:
                                        FFAppState().motivoautocoletahpv,
                                    acetobrancasSupEsquerdoAnt12x3hr:
                                        FFAppState()
                                            .AcetobranasSupEsquerdoAnt12x3hr,
                                    acetobrancasInfEsquerdoPost3x6hr:
                                        FFAppState()
                                            .AcetobranasInfEsquerdoPot3x6hr,
                                    acetobrancasSupDireitoAnt9x12hr:
                                        FFAppState()
                                            .AcetobranasSupDireitoAnt9x12hr,
                                    acetobrancasInfDireitopost6x9hr:
                                        FFAppState()
                                            .AcetobranasInfDireitoPost6x9hr,
                                    areasacetobrancasnocanal:
                                        FFAppState().areasacetobrancasnocanal,
                                    motivocitologiahistopatologia: FFAppState()
                                        .motivocitologiahistopatologia,
                                    outrosespecificarimpressaococoposcopica:
                                        FFAppState()
                                            .outrosespecificarimpressaococolposcopica,
                                    motivodotipodevisitazt:
                                        FFAppState().motivodotipodevisitazt,
                                    opcaobiopsia: FFAppState().opcaobiopsia,
                                    numerodefragmentosbiopsia:
                                        FFAppState().numerodefragmentosbiopsia,
                                    motivodenaorealizarbiopsia:
                                        FFAppState().motivodenaorealizarbiopsia,
                                    numerodepecasbiopsia:
                                        FFAppState().numerodepecasbiopsia,
                                    obsacetobrancas:
                                        FFAppState().obsacetobrancas,
                                    image1: FFAppState().img1,
                                    image2: FFAppState().img2,
                                    image3: FFAppState().img3,
                                  ),
                                  'data': FieldValue.serverTimestamp(),
                                };
                                await PacientesRecord.collection
                                    .doc()
                                    .set(pacientesCreateData);

                                context.pushNamed(
                                  'listaparticipantes',
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: TransitionInfo(
                                      hasTransition: true,
                                      transitionType:
                                          PageTransitionType.bottomToTop,
                                    ),
                                  },
                                );
                              },
                              text: 'Finalizar',
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
