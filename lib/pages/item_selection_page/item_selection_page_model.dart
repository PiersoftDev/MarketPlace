import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ItemSelectionPageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for ItemSearchTextField widget.
  TextEditingController? itemSearchTextFieldController;
  String? Function(BuildContext, String?)?
      itemSearchTextFieldControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    itemSearchTextFieldController?.dispose();
  }

  /// Additional helper methods are added here.

}
