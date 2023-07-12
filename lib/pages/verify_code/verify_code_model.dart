import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class VerifyCodeModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for otp widget.
  TextEditingController? otp;
  String? Function(BuildContext, String?)? otpValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    otp = TextEditingController();
  }

  void dispose() {
    unfocusNode.dispose();
    otp?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
