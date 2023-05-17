import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';
import 'listaparticipantes_model.dart';
export 'listaparticipantes_model.dart';

class ListaparticipantesWidget extends StatefulWidget {
  const ListaparticipantesWidget({Key? key}) : super(key: key);

  @override
  _ListaparticipantesWidgetState createState() =>
      _ListaparticipantesWidgetState();
}

class _ListaparticipantesWidgetState extends State<ListaparticipantesWidget> {
  late ListaparticipantesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListaparticipantesModel());

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
          'Lista de participantes',
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
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
            child: PagedListView<DocumentSnapshot<Object?>?, PacientesRecord>(
              pagingController: () {
                final Query<Object?> Function(Query<Object?>) queryBuilder =
                    (pacientesRecord) => pacientesRecord;
                if (_model.pagingController != null) {
                  final query = queryBuilder(PacientesRecord.collection);
                  if (query != _model.pagingQuery) {
                    // The query has changed
                    _model.pagingQuery = query;
                    _model.streamSubscriptions.forEach((s) => s?.cancel());
                    _model.streamSubscriptions.clear();
                    _model.pagingController!.refresh();
                  }
                  return _model.pagingController!;
                }

                _model.pagingController = PagingController(firstPageKey: null);
                _model.pagingQuery = queryBuilder(PacientesRecord.collection);
                _model.pagingController!
                    .addPageRequestListener((nextPageMarker) {
                  queryPacientesRecordPage(
                    queryBuilder: (pacientesRecord) => pacientesRecord,
                    nextPageMarker: nextPageMarker,
                    pageSize: 25,
                    isStream: true,
                  ).then((page) {
                    _model.pagingController!.appendPage(
                      page.data,
                      page.nextPageMarker,
                    );
                    final streamSubscription = page.dataStream?.listen((data) {
                      data.forEach((item) {
                        final itemIndexes = _model.pagingController!.itemList!
                            .asMap()
                            .map((k, v) => MapEntry(v.reference.id, k));
                        final index = itemIndexes[item.reference.id];
                        final items = _model.pagingController!.itemList!;
                        if (index != null) {
                          items.replaceRange(index, index + 1, [item]);
                          _model.pagingController!.itemList = {
                            for (var item in items) item.reference: item
                          }.values.toList();
                        }
                      });
                      setState(() {});
                    });
                    _model.streamSubscriptions.add(streamSubscription);
                  });
                });
                return _model.pagingController!;
              }(),
              padding: EdgeInsets.zero,
              scrollDirection: Axis.vertical,
              builderDelegate: PagedChildBuilderDelegate<PacientesRecord>(
                // Customize what your widget looks like when it's loading the first page.
                firstPageProgressIndicatorBuilder: (_) => Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: CircularProgressIndicator(
                      color: FlutterFlowTheme.of(context).primaryColor,
                    ),
                  ),
                ),

                itemBuilder: (context, _, listViewIndex) {
                  final listViewPacientesRecord =
                      _model.pagingController!.itemList![listViewIndex];
                  return Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 10.0, 0.0),
                              child: Card(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Icon(
                                          Icons.person,
                                          color: Colors.black,
                                          size: 24.0,
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 10.0, 0.0),
                                          child: Text(
                                            listViewPacientesRecord.nome!
                                                .maybeHandleOverflow(
                                              maxChars: 15,
                                              replacement: '…',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                        ),
                                        Text(
                                          listViewPacientesRecord.tipdevisita!,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Montserrat',
                                                fontSize: 10.0,
                                              ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          listViewPacientesRecord.nPid!
                                              .toString(),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1,
                                        ),
                                        Text(
                                          listViewPacientesRecord.site!
                                              .maybeHandleOverflow(
                                            maxChars: 10,
                                            replacement: '…',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1,
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        FlutterFlowIconButton(
                                          borderColor: Colors.transparent,
                                          borderRadius: 30.0,
                                          borderWidth: 1.0,
                                          buttonSize: 60.0,
                                          icon: Icon(
                                            Icons.remove_red_eye,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            size: 20.0,
                                          ),
                                          onPressed: () async {
                                            context.pushNamed(
                                              'DetalhesParticipantes',
                                              queryParams: {
                                                'nome': serializeParam(
                                                  listViewPacientesRecord.nome,
                                                  ParamType.String,
                                                ),
                                                'image1': serializeParam(
                                                  listViewPacientesRecord
                                                      .image1,
                                                  ParamType.String,
                                                ),
                                                'image2': serializeParam(
                                                  listViewPacientesRecord
                                                      .image2,
                                                  ParamType.String,
                                                ),
                                                'image3': serializeParam(
                                                  listViewPacientesRecord
                                                      .image3,
                                                  ParamType.String,
                                                ),
                                              }.withoutNulls,
                                              extra: <String, dynamic>{
                                                kTransitionInfoKey:
                                                    TransitionInfo(
                                                  hasTransition: true,
                                                  transitionType:
                                                      PageTransitionType
                                                          .rightToLeft,
                                                ),
                                              },
                                            );
                                          },
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
