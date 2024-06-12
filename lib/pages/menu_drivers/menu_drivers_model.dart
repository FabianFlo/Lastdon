import '/flutter_flow/flutter_flow_util.dart';
import 'menu_drivers_widget.dart' show MenuDriversWidget;
import 'package:flutter/material.dart';

class MenuDriversModel extends FlutterFlowModel<MenuDriversWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
