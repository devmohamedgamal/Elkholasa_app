import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'choose_your_roles_widget.dart' show ChooseYourRolesWidget;
import 'package:flutter/material.dart';

class ChooseYourRolesModel extends FlutterFlowModel<ChooseYourRolesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for University widget.
  String? universityValue;
  FormFieldController<String>? universityValueController;
  // State field(s) for debartment widget.
  String? debartmentValue;
  FormFieldController<String>? debartmentValueController;
  // State field(s) for level widget.
  String? levelValue;
  FormFieldController<String>? levelValueController;
  // State field(s) for semester widget.
  String? semesterValue;
  FormFieldController<String>? semesterValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
