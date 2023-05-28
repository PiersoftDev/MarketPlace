import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'order_submit_success_model.dart';
export 'order_submit_success_model.dart';

class OrderSubmitSuccessWidget extends StatefulWidget {
  const OrderSubmitSuccessWidget({Key? key}) : super(key: key);

  @override
  _OrderSubmitSuccessWidgetState createState() =>
      _OrderSubmitSuccessWidgetState();
}

class _OrderSubmitSuccessWidgetState extends State<OrderSubmitSuccessWidget> {
  late OrderSubmitSuccessModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OrderSubmitSuccessModel());
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
        backgroundColor: Color(0xFFEAE6E2),
        body: SafeArea(
          top: true,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xFFEAE6E2),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Lottie.asset(
                  'assets/lottie_animations/96237-success.json',
                  width: 150.0,
                  height: 130.0,
                  fit: BoxFit.contain,
                  animate: true,
                ),
                Text(
                  'Succesfully submitted your order',
                  style: FlutterFlowTheme.of(context).bodyMedium,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
