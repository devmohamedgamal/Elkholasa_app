import '/flutter_flow/flutter_flow_util.dart';
import 'on_boarding_view_widget.dart' show OnBoardingViewWidget;
import 'package:flutter/material.dart';

class OnBoardingViewModel extends FlutterFlowModel<OnBoardingViewWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
