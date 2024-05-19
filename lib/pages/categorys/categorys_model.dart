import '/flutter_flow/flutter_flow_util.dart';
import 'categorys_widget.dart' show CategorysWidget;
import 'package:flutter/material.dart';

class CategorysModel extends FlutterFlowModel<CategorysWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
