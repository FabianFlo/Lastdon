import '/flutter_flow/flutter_flow_util.dart';
import 'authentication_widget.dart' show AuthenticationWidget;
import 'package:flutter/material.dart';

class AuthenticationModel extends FlutterFlowModel<AuthenticationWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for Email_login widget.
  FocusNode? emailLoginFocusNode;
  TextEditingController? emailLoginTextController;
  String? Function(BuildContext, String?)? emailLoginTextControllerValidator;
  // State field(s) for Password_login widget.
  FocusNode? passwordLoginFocusNode;
  TextEditingController? passwordLoginTextController;
  late bool passwordLoginVisibility;
  String? Function(BuildContext, String?)? passwordLoginTextControllerValidator;
  // State field(s) for Email_create widget.
  FocusNode? emailCreateFocusNode;
  TextEditingController? emailCreateTextController;
  String? Function(BuildContext, String?)? emailCreateTextControllerValidator;
  // State field(s) for Password_create widget.
  FocusNode? passwordCreateFocusNode;
  TextEditingController? passwordCreateTextController;
  late bool passwordCreateVisibility;
  String? Function(BuildContext, String?)?
      passwordCreateTextControllerValidator;
  // State field(s) for Password_confirmed-create widget.
  FocusNode? passwordConfirmedCreateFocusNode;
  TextEditingController? passwordConfirmedCreateTextController;
  late bool passwordConfirmedCreateVisibility;
  String? Function(BuildContext, String?)?
      passwordConfirmedCreateTextControllerValidator;

  @override
  void initState(BuildContext context) {
    passwordLoginVisibility = false;
    passwordCreateVisibility = false;
    passwordConfirmedCreateVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    emailLoginFocusNode?.dispose();
    emailLoginTextController?.dispose();

    passwordLoginFocusNode?.dispose();
    passwordLoginTextController?.dispose();

    emailCreateFocusNode?.dispose();
    emailCreateTextController?.dispose();

    passwordCreateFocusNode?.dispose();
    passwordCreateTextController?.dispose();

    passwordConfirmedCreateFocusNode?.dispose();
    passwordConfirmedCreateTextController?.dispose();
  }
}
