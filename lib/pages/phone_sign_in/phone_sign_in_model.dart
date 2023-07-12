import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class PhoneSignInModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for CountryCodeDropDown widget.
  String? countryCodeDropDownValue;
  FormFieldController<String>? countryCodeDropDownValueController;
  // State field(s) for WhatsappPhoneNumberTextField widget.
  TextEditingController? whatsappPhoneNumberTextFieldController;
  String? Function(BuildContext, String?)?
      whatsappPhoneNumberTextFieldControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    whatsappPhoneNumberTextFieldController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
