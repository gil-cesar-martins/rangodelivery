import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'mostra_pedidos_model.dart';
export 'mostra_pedidos_model.dart';

class MostraPedidosWidget extends StatefulWidget {
  const MostraPedidosWidget({
    super.key,
    required this.paramMesaCompleta,
  });

  final DocumentReference? paramMesaCompleta;

  @override
  State<MostraPedidosWidget> createState() => _MostraPedidosWidgetState();
}

class _MostraPedidosWidgetState extends State<MostraPedidosWidget> {
  late MostraPedidosModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MostraPedidosModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
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
            FFAppState().titulo,
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 22.0,
                ),
          ),
          actions: const [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(25.0, 20.0, 25.0, 50.0),
          child: StreamBuilder<List<PedidoRecord>>(
            stream: queryPedidoRecord(
              queryBuilder: (pedidoRecord) => pedidoRecord.where(
                'status',
                isEqualTo: 2,
              ),
              limit: 50,
            ),
            builder: (context, snapshot) {
              // Customize what your widget looks like when it's loading.
              if (!snapshot.hasData) {
                return Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: SpinKitFadingGrid(
                      color: FlutterFlowTheme.of(context).primary,
                      size: 50.0,
                    ),
                  ),
                );
              }
              List<PedidoRecord> columnPedidoRecordList = snapshot.data!;
              return SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: List.generate(columnPedidoRecordList.length,
                      (columnIndex) {
                    final columnPedidoRecord =
                        columnPedidoRecordList[columnIndex];
                    return Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      elevation: 4.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 0.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      dateTimeFormat(
                                          'd/M/y', columnPedidoRecord.data!),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                    ),
                                    Text(
                                      columnPedidoRecord.tipo,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    5.0, 0.0, 5.0, 0.0),
                                child: Text(
                                  formatNumber(
                                    columnPedidoRecord.total,
                                    formatType: FormatType.decimal,
                                    decimalType: DecimalType.commaDecimal,
                                    currency: 'R\$ ',
                                  ),
                                  textAlign: TextAlign.end,
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                ),
                              ),
                            ),
                            if (columnPedidoRecord.status > 1)
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 5.0, 0.0),
                                child: FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 20.0,
                                  borderWidth: 1.0,
                                  buttonSize: 40.0,
                                  icon: FaIcon(
                                    FontAwesomeIcons.cartPlus,
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 24.0,
                                  ),
                                  onPressed: () async {
                                    context.pushNamed(
                                      'produtos',
                                      queryParameters: {
                                        'paramIDPedido': serializeParam(
                                          columnPedidoRecord.reference.id,
                                          ParamType.String,
                                        ),
                                        'paramPedRefCompleta': serializeParam(
                                          columnPedidoRecord.reference,
                                          ParamType.DocumentReference,
                                        ),
                                        'paramMesa2': serializeParam(
                                          widget.paramMesaCompleta,
                                          ParamType.DocumentReference,
                                        ),
                                      }.withoutNulls,
                                    );
                                  },
                                ),
                              ),
                          ],
                        ),
                      ),
                    );
                  }).addToEnd(const SizedBox(height: 50.0)),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
