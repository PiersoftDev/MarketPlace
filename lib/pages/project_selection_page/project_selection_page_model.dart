import '/backend/backend.dart';
import '/components/add_to_cart_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProjectSelectionPageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for ItemSearchTextField widget.
  TextEditingController? itemSearchTextFieldController;
  String? Function(BuildContext, String?)?
      itemSearchTextFieldControllerValidator;
  // Algolia Search Results from action on Icon
  List<MpProjectsRecord>? algoliaSearchResults = [];

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    itemSearchTextFieldController?.dispose();
  }

  /// Additional helper methods are added here.

}
