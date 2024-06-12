import '/flutter_flow/flutter_flow_util.dart';
import 'menu_crud_widget.dart' show MenuCrudWidget;
import 'package:flutter/material.dart';

class MenuCrudModel extends FlutterFlowModel<MenuCrudWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
