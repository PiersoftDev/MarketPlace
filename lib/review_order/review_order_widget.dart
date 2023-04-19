import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'review_order_model.dart';
export 'review_order_model.dart';

class ReviewOrderWidget extends StatefulWidget {
  const ReviewOrderWidget({Key? key}) : super(key: key);

  @override
  _ReviewOrderWidgetState createState() => _ReviewOrderWidgetState();
}

class _ReviewOrderWidgetState extends State<ReviewOrderWidget> {
  late ReviewOrderModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ReviewOrderModel());
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

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
                color: Color(0xFFEAE6E2),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.8,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        FlutterFlowChoiceChips(
                          options: [ChipData('Option 1', Icons.train_outlined)],
                          onChanged: (val) => setState(
                              () => _model.choiceChipsValue1 = val?.first),
                          selectedChipStyle: ChipStyle(
                            backgroundColor: Color(0xFFE3E7ED),
                            textStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                ),
                            iconColor: Colors.white,
                            iconSize: 18.0,
                            elevation: 4.0,
                          ),
                          unselectedChipStyle: ChipStyle(
                            backgroundColor: Colors.white,
                            textStyle:
                                FlutterFlowTheme.of(context).bodySmall.override(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFFE3E7ED),
                                    ),
                            iconColor: Color(0xFFE3E7ED),
                            iconSize: 18.0,
                            elevation: 4.0,
                          ),
                          chipSpacing: 20.0,
                          multiselect: false,
                          initialized: _model.choiceChipsValue1 != null,
                          alignment: WrapAlignment.start,
                          controller: _model.choiceChipsValueController1 ??=
                              FormFieldController<List<String>>(
                            [FFAppState().selectedProjectId],
                          ),
                        ),
                        FlutterFlowChoiceChips(
                          options: [ChipData('Option 1', Icons.train_outlined)],
                          onChanged: (val) => setState(
                              () => _model.choiceChipsValue2 = val?.first),
                          selectedChipStyle: ChipStyle(
                            backgroundColor: Color(0xFFE3E7ED),
                            textStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                ),
                            iconColor: Colors.white,
                            iconSize: 18.0,
                            elevation: 4.0,
                          ),
                          unselectedChipStyle: ChipStyle(
                            backgroundColor: Colors.white,
                            textStyle:
                                FlutterFlowTheme.of(context).bodySmall.override(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFFE3E7ED),
                                    ),
                            iconColor: Color(0xFFE3E7ED),
                            iconSize: 18.0,
                            elevation: 4.0,
                          ),
                          chipSpacing: 20.0,
                          multiselect: false,
                          initialized: _model.choiceChipsValue2 != null,
                          alignment: WrapAlignment.start,
                          controller: _model.choiceChipsValueController2 ??=
                              FormFieldController<List<String>>(
                            [FFAppState().selectedActivityId],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 20.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        context.pushNamed('OrderSubmitSuccess');
                      },
                      text: 'Submit Order',
                      options: FFButtonOptions(
                        width: 130.0,
                        height: 40.0,
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: Color(0xFF235082),
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                ),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
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
