import '/flutter_flow/flutter_flow_util.dart';
import 'create_widget.dart' show CreateWidget;
import 'package:flutter/material.dart';

class CreateModel extends FlutterFlowModel<CreateWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  // State field(s) for Rut widget.
  FocusNode? rutFocusNode;
  TextEditingController? rutTextController;
  String? Function(BuildContext, String?)? rutTextControllerValidator;
  // State field(s) for Email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    nameFocusNode?.dispose();
    nameTextController?.dispose();

    rutFocusNode?.dispose();
    rutTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();
  }
}
