import '/flutter_flow/flutter_flow_util.dart';
import 'lectures_view_widget.dart' show LecturesViewWidget;
import 'package:flutter/material.dart';

class LecturesViewModel extends FlutterFlowModel<LecturesViewWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
