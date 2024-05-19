import '/flutter_flow/flutter_flow_util.dart';
import 'docs_details_view_widget.dart' show DocsDetailsViewWidget;
import 'package:flutter/material.dart';

class DocsDetailsViewModel extends FlutterFlowModel<DocsDetailsViewWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
