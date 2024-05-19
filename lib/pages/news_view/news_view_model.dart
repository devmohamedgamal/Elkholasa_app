import '/flutter_flow/flutter_flow_util.dart';
import 'news_view_widget.dart' show NewsViewWidget;
import 'package:flutter/material.dart';

class NewsViewModel extends FlutterFlowModel<NewsViewWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
