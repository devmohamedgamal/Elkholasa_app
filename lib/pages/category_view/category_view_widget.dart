import '/backend/supabase/supabase.dart';
import '/component/empty_component/empty_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'category_view_model.dart';
export 'category_view_model.dart';

class CategoryViewWidget extends StatefulWidget {
  const CategoryViewWidget({
    super.key,
    required this.category,
    required this.subjectName,
  });

  final String? category;
  final String? subjectName;

  @override
  State<CategoryViewWidget> createState() => _CategoryViewWidgetState();
}

class _CategoryViewWidgetState extends State<CategoryViewWidget> {
  late CategoryViewModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CategoryViewModel());
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
          backgroundColor: const Color(0xFF7966FB),
          automaticallyImplyLeading: true,
          title: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                FFAppState().semester,
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Marhey',
                      color: Colors.white,
                      fontSize: 10.0,
                      letterSpacing: 0.0,
                    ),
              ),
              Text(
                FFAppState().level,
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Marhey',
                      color: Colors.white,
                      fontSize: 10.0,
                      letterSpacing: 0.0,
                    ),
              ),
              Text(
                FFAppState().debartment,
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Marhey',
                      color: Colors.white,
                      fontSize: 10.0,
                      letterSpacing: 0.0,
                    ),
              ),
              Text(
                valueOrDefault<String>(
                  widget.category,
                  'unkown',
                ),
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Marhey',
                      color: Colors.white,
                      fontSize: 10.0,
                      letterSpacing: 0.0,
                    ),
              ),
            ],
          ),
          actions: const [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xFF7966FB),
            ),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(23.0, 0.0, 0.0, 0.0),
                    child: Text(
                      'Choose your ${widget.category}',
                      style: FlutterFlowTheme.of(context).titleMedium.override(
                            fontFamily: 'Readex Pro',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                      child: Container(
                        width: double.infinity,
                        height: 100.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(0.0),
                            bottomRight: Radius.circular(0.0),
                            topLeft: Radius.circular(50.0),
                            topRight: Radius.circular(50.0),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24.0, 40.0, 24.0, 0.0),
                          child: FutureBuilder<List<MaterialsRow>>(
                            future: MaterialsTable().queryRows(
                              queryFn: (q) => q
                                  .eq(
                                    'level',
                                    FFAppState().level,
                                  )
                                  .eq(
                                    'debartment',
                                    FFAppState().debartment,
                                  )
                                  .eq(
                                    'semester',
                                    FFAppState().semester,
                                  )
                                  .eq(
                                    'category',
                                    widget.category,
                                  )
                                  .eq(
                                    'subjectName',
                                    widget.subjectName,
                                  ),
                            ),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50.0,
                                    height: 50.0,
                                    child: CircularProgressIndicator(
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        FlutterFlowTheme.of(context).primary,
                                      ),
                                    ),
                                  ),
                                );
                              }
                              List<MaterialsRow> listViewMaterialsRowList =
                                  snapshot.data!;
                              if (listViewMaterialsRowList.isEmpty) {
                                return const EmptyComponentWidget();
                              }
                              return ListView.separated(
                                padding: EdgeInsets.zero,
                                scrollDirection: Axis.vertical,
                                itemCount: listViewMaterialsRowList.length,
                                separatorBuilder: (_, __) =>
                                    const SizedBox(height: 30.0),
                                itemBuilder: (context, listViewIndex) {
                                  final listViewMaterialsRow =
                                      listViewMaterialsRowList[listViewIndex];
                                  return Align(
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.pushNamed(
                                          'webView',
                                          queryParameters: {
                                            'name': serializeParam(
                                              listViewMaterialsRow.name,
                                              ParamType.String,
                                            ),
                                            'link': serializeParam(
                                              listViewMaterialsRow.link,
                                              ParamType.String,
                                            ),
                                          }.withoutNulls,
                                        );
                                      },
                                      child: Container(
                                        width: double.infinity,
                                        height: 100.0,
                                        decoration: BoxDecoration(
                                          color: listViewMaterialsRow.status ==
                                                  'محلول'
                                              ? FlutterFlowTheme.of(context)
                                                  .success
                                              : const Color(0xFF485696),
                                          borderRadius:
                                              BorderRadius.circular(18.0),
                                        ),
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        child: Text(
                                          valueOrDefault<String>(
                                            listViewMaterialsRow.name,
                                            'u',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .headlineLarge
                                              .override(
                                                fontFamily: 'Marhey',
                                                color: Colors.white,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                    ),
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
      ),
    );
  }
}
