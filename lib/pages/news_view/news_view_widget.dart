import '/backend/supabase/supabase.dart';
import '/component/empty_component/empty_component_widget.dart';
import '/component/news_list_view_item/news_list_view_item_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'news_view_model.dart';
export 'news_view_model.dart';

class NewsViewWidget extends StatefulWidget {
  const NewsViewWidget({super.key});

  @override
  State<NewsViewWidget> createState() => _NewsViewWidgetState();
}

class _NewsViewWidgetState extends State<NewsViewWidget> {
  late NewsViewModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NewsViewModel());
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
        backgroundColor: const Color(0xFFF6F6F6),
        appBar: AppBar(
          backgroundColor: const Color(0xFFF6F6F6),
          iconTheme: IconThemeData(color: FlutterFlowTheme.of(context).primary),
          automaticallyImplyLeading: true,
          title: Text(
            FFLocalizations.of(context).getText(
              's42058m5' /* News Feed */,
            ),
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Readex Pro',
                  color: const Color(0xFF12151C),
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w500,
                ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
              child: FlutterFlowIconButton(
                buttonSize: 40.0,
                icon: const FaIcon(
                  FontAwesomeIcons.search,
                  color: Color(0xFF12151C),
                  size: 24.0,
                ),
                onPressed: () {
                  print('IconButton pressed ...');
                },
              ),
            ),
          ],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      FFLocalizations.of(context).getText(
                        'ykq2tka1' /* University News */,
                      ),
                      style:
                          FlutterFlowTheme.of(context).headlineLarge.override(
                                fontFamily: 'Readex Pro',
                                color: const Color(0xFF12151C),
                                fontSize: 32.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.normal,
                              ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: MediaQuery.sizeOf(context).height * 0.8,
                decoration: const BoxDecoration(),
                child: FutureBuilder<List<NewsRow>>(
                  future: NewsTable().queryRows(
                    queryFn: (q) => q.eq(
                      'university',
                      FFAppState().University,
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
                    List<NewsRow> listViewNewsRowList = snapshot.data!;
                    if (listViewNewsRowList.isEmpty) {
                      return const EmptyComponentWidget();
                    }
                    return ListView.builder(
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.vertical,
                      itemCount: listViewNewsRowList.length,
                      itemBuilder: (context, listViewIndex) {
                        final listViewNewsRow =
                            listViewNewsRowList[listViewIndex];
                        return NewsListViewItemWidget(
                          key: Key(
                              'Key1c2_${listViewIndex}_of_${listViewNewsRowList.length}'),
                          news: listViewNewsRow,
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
