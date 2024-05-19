import '/flutter_flow/flutter_flow_util.dart';
import 'home_view_widget.dart' show HomeViewWidget;
import 'package:flutter/material.dart';

class HomeViewModel extends FlutterFlowModel<HomeViewWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
