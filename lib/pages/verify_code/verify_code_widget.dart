import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'verify_code_model.dart';
export 'verify_code_model.dart';

class VerifyCodeWidget extends StatefulWidget {
  const VerifyCodeWidget({Key? key}) : super(key: key);

  @override
  _VerifyCodeWidgetState createState() => _VerifyCodeWidgetState();
}

class _VerifyCodeWidgetState extends State<VerifyCodeWidget> {
  late VerifyCodeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VerifyCodeModel());
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFFF5EFE6),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: double.infinity,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: Color(0xFFF5EFE6),
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(-0.95, 0.0),
                      child: Icon(
                        Icons.arrow_back,
                        color: Color(0xFF1C3879),
                        size: 30.0,
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 300.0,
                    decoration: BoxDecoration(
                      color: Color(0xFFF5EFE6),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(-1.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 10.0, 10.0, 10.0),
                            child: Text(
                              'Enter OTP Code',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF1C3879),
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 10.0, 10.0, 10.0),
                          child: Text(
                            'You only have to enter an OTP code we sent via SMS to your registered number',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF1C3879),
                                  fontWeight: FontWeight.normal,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 10.0, 10.0, 10.0),
                          child: PinCodeTextField(
                            autoDisposeControllers: false,
                            appContext: context,
                            length: 6,
                            textStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF2351A3),
                                ),
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            enableActiveFill: false,
                            autoFocus: true,
                            enablePinAutofill: true,
                            errorTextSpace: 16.0,
                            showCursor: true,
                            cursorColor: Color(0xFF2351A3),
                            obscureText: false,
                            hintCharacter: '●',
                            pinTheme: PinTheme(
                              fieldHeight: 40.0,
                              fieldWidth: 40.0,
                              borderWidth: 2.0,
                              borderRadius: BorderRadius.circular(12.0),
                              shape: PinCodeFieldShape.box,
                              activeColor: Color(0xFF2351A3),
                              inactiveColor: Color(0xFF2351A3),
                              selectedColor: Color(0xFF2351A3),
                              activeFillColor: Color(0xFF2351A3),
                              inactiveFillColor: Color(0xFF2351A3),
                              selectedFillColor: Color(0xFF2351A3),
                            ),
                            controller: _model.otp,
                            onChanged: (_) {},
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            validator: _model.otpValidator.asValidator(context),
                          ),
                        ),
                        FFButtonWidget(
                          onPressed: () async {
                            GoRouter.of(context).prepareAuthEvent();
                            final smsCodeVal = _model.otp!.text;
                            if (smsCodeVal == null || smsCodeVal.isEmpty) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text('Enter SMS verification code.'),
                                ),
                              );
                              return;
                            }
                            final phoneVerifiedUser =
                                await authManager.verifySmsCode(
                              context: context,
                              smsCode: smsCodeVal,
                            );
                            if (phoneVerifiedUser == null) {
                              return;
                            }

                            context.goNamedAuth('Dashboard', mounted);
                          },
                          text: 'Verify',
                          options: FFButtonOptions(
                            width: 130.0,
                            height: 40.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: Color(0xFF1C3879),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                ),
                            elevation: 2.0,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
