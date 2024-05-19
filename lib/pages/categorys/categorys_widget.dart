import '/backend/supabase/supabase.dart';
import '/component/gridview_i_tem/gridview_i_tem_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:provider/provider.dart';
import 'categorys_model.dart';
export 'categorys_model.dart';

class CategorysWidget extends StatefulWidget {
  const CategorysWidget({
    super.key,
    required this.subjectName,
  });

  final String? subjectName;

  @override
  State<CategorysWidget> createState() => _CategorysWidgetState();
}

class _CategorysWidgetState extends State<CategorysWidget> {
  late CategorysModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CategorysModel());
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
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                valueOrDefault<String>(
                  widget.subjectName,
                  'unkown',
                ),
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Marhey',
                      color: Colors.white,
                      fontSize: 10.0,
                      letterSpacing: 0.0,
                    ),
              ),
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
                      FFLocalizations.of(context).getText(
                        '1ypbm1mu' /* Choose your category */,
                      ),
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
                              16.0, 24.0, 16.0, 10.0),
                          child: FutureBuilder<List<CategoryRow>>(
                            future: CategoryTable().queryRows(
                              queryFn: (q) =>
                                  q.order('created_at', ascending: true),
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
                              List<CategoryRow> staggeredViewCategoryRowList =
                                  snapshot.data!;
                              return MasonryGridView.builder(
                                gridDelegate:
                                    const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                ),
                                crossAxisSpacing: 10.0,
                                mainAxisSpacing: 20.0,
                                itemCount: staggeredViewCategoryRowList.length,
                                shrinkWrap: true,
                                itemBuilder: (context, staggeredViewIndex) {
                                  final staggeredViewCategoryRow =
                                      staggeredViewCategoryRowList[
                                          staggeredViewIndex];
                                  return InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.pushNamed(
                                        'categoryView',
                                        queryParameters: {
                                          'category': serializeParam(
                                            staggeredViewCategoryRow.name,
                                            ParamType.String,
                                          ),
                                          'subjectName': serializeParam(
                                            widget.subjectName,
                                            ParamType.String,
                                          ),
                                        }.withoutNulls,
                                      );
                                    },
                                    child: GridviewITemWidget(
                                      key: Key(
                                          'Keyf4l_${staggeredViewIndex}_of_${staggeredViewCategoryRowList.length}'),
                                      name: staggeredViewCategoryRow.name!,
                                      color: staggeredViewCategoryRow
                                          .backgroundColor!,
                                      image: staggeredViewCategoryRow.imageUrl!,
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
