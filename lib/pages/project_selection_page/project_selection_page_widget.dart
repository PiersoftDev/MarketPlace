import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'project_selection_page_model.dart';
export 'project_selection_page_model.dart';

class ProjectSelectionPageWidget extends StatefulWidget {
  const ProjectSelectionPageWidget({Key? key}) : super(key: key);

  @override
  _ProjectSelectionPageWidgetState createState() =>
      _ProjectSelectionPageWidgetState();
}

class _ProjectSelectionPageWidgetState
    extends State<ProjectSelectionPageWidget> {
  late ProjectSelectionPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProjectSelectionPageModel());

    _model.textController ??= TextEditingController();
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
        backgroundColor: Color(0xFFF5EFE6),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 1.0,
              decoration: BoxDecoration(
                color: Color(0xFFF5EFE6),
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                      child: Container(
                        height: 40.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              5.0, 5.0, 5.0, 5.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8.0, 0.0, 0.0, 0.0),
                                  child: TextFormField(
                                    controller: _model.textController,
                                    onChanged: (_) => EasyDebounce.debounce(
                                      '_model.textController',
                                      Duration(milliseconds: 1000),
                                      () async {
                                        setState(() =>
                                            _model.apiRequestCompleter = null);
                                        await _model
                                            .waitForApiRequestCompleted();
                                      },
                                    ),
                                    autofocus: true,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      hintText: 'Pick a project',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .override(
                                            fontFamily: 'Poppins',
                                            fontSize: 14.0,
                                          ),
                                      enabledBorder: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      errorBorder: InputBorder.none,
                                      focusedErrorBorder: InputBorder.none,
                                    ),
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                    validator: _model.textControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    5.0, 5.0, 5.0, 5.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed('ProjectSelectionPage');
                                  },
                                  child: Icon(
                                    Icons.close,
                                    color: Colors.black,
                                    size: 20.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    if (_model.textController.text != null &&
                        _model.textController.text != '')
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 4.0,
                                color: Color(0x33000000),
                                offset: Offset(0.0, 2.0),
                              )
                            ],
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: FutureBuilder<ApiCallResponse>(
                            future: (_model.apiRequestCompleter ??=
                                    Completer<ApiCallResponse>()
                                      ..complete(
                                          HttpvmastersprojectssearchProjectjCall
                                              .call(
                                        projectName: _model.textController.text,
                                      )))
                                .future,
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 20.0, 20.0, 20.0),
                                    child: LinearProgressIndicator(
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
                                    ),
                                  ),
                                );
                              }
                              final listViewHttpvmastersprojectssearchProjectjResponse =
                                  snapshot.data!;
                              return Builder(
                                builder: (context) {
                                  final projects = getJsonField(
                                    listViewHttpvmastersprojectssearchProjectjResponse
                                        .jsonBody,
                                    r'''$[*]''',
                                  ).toList();
                                  if (projects.isEmpty) {
                                    return Image.asset(
                                      'assets/images/Rectanglebag.png',
                                    );
                                  }
                                  return RefreshIndicator(
                                    onRefresh: () async {
                                      setState(() =>
                                          _model.apiRequestCompleter = null);
                                      await _model.waitForApiRequestCompleted();
                                    },
                                    child: ListView.builder(
                                      padding: EdgeInsets.zero,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      itemCount: projects.length,
                                      itemBuilder: (context, projectsIndex) {
                                        final projectsItem =
                                            projects[projectsIndex];
                                        return Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 10.0, 10.0, 10.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              setState(() {
                                                FFAppState().selectedProjectId =
                                                    getJsonField(
                                                  projectsItem,
                                                  r'''$.lnId''',
                                                ).toString();
                                                FFAppState()
                                                        .selectedProjectName =
                                                    getJsonField(
                                                  projectsItem,
                                                  r'''$.projectName''',
                                                ).toString();
                                              });

                                              context.pushNamed(
                                                  'ProjectActivitySelectionPage');
                                            },
                                            child: Container(
                                              width: 100.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                                border: Border.all(
                                                  color: Color(0xFFC23F3F),
                                                ),
                                              ),
                                              child: SingleChildScrollView(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              -1.0, 0.0),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    10.0,
                                                                    10.0,
                                                                    10.0),
                                                        child: Text(
                                                          getJsonField(
                                                            projectsItem,
                                                            r'''$.projectName''',
                                                          ).toString(),
                                                          textAlign:
                                                              TextAlign.start,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
