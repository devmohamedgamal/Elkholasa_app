import '/flutter_flow/flutter_flow_util.dart';
import 'category_view_widget.dart' show CategoryViewWidget;
import 'package:flutter/material.dart';

class CategoryViewModel extends FlutterFlowModel<CategoryViewWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
