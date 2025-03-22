import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'member_list_page_model.dart';
export 'member_list_page_model.dart';

class MemberListPageWidget extends StatefulWidget {
  const MemberListPageWidget({super.key});

  static String routeName = 'MemberListPage';
  static String routePath = '/memberListPage';

  @override
  State<MemberListPageWidget> createState() => _MemberListPageWidgetState();
}

class _MemberListPageWidgetState extends State<MemberListPageWidget> {
  late MemberListPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MemberListPageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          title: Text(
            'Page Title',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Inter Tight',
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [],
                  ),
                  FutureBuilder<ApiCallResponse>(
                    future: MemberListCall.call(
                      serverAddress: FFAppState().serverAddress,
                      iPName: FFAppState().ipname,
                      mobileNo: FFAppState().mobileNumber,
                      agentID: FFAppState().agentId,
                      token: FFAppState().token,
                      acno: '0',
                    ),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                          ),
                        );
                      }
                      final listViewMemberListResponse = snapshot.data!;

                      return Builder(
                        builder: (context) {
                          final memberList = MemberListCall.memberList(
                                listViewMemberListResponse.jsonBody,
                              )?.toList() ??
                              [];

                          return ListView.builder(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: memberList.length,
                            itemBuilder: (context, memberListIndex) {
                              final memberListItem =
                                  memberList[memberListIndex];
                              return InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed(
                                    CollectionRecieptWidget.routeName,
                                    queryParameters: {
                                      'acNo': serializeParam(
                                        getJsonField(
                                          memberListItem,
                                          r'''$.AcNo''',
                                        ).toString(),
                                        ParamType.String,
                                      ),
                                      'customerName': serializeParam(
                                        getJsonField(
                                          memberListItem,
                                          r'''$.CustomerName''',
                                        ).toString(),
                                        ParamType.String,
                                      ),
                                      'balance': serializeParam(
                                        getJsonField(
                                          memberListItem,
                                          r'''$.Balance''',
                                        ).toString(),
                                        ParamType.String,
                                      ),
                                      'shadowBalance': serializeParam(
                                        getJsonField(
                                          memberListItem,
                                          r'''$.shadowBalance''',
                                        ).toString(),
                                        ParamType.String,
                                      ),
                                      'acAge': serializeParam(
                                        getJsonField(
                                          memberListItem,
                                          r'''$.AcAge''',
                                        ).toString(),
                                        ParamType.String,
                                      ),
                                      'lastNvDate': serializeParam(
                                        getJsonField(
                                          memberListItem,
                                          r'''$.LastNvDate''',
                                        ).toString(),
                                        ParamType.String,
                                      ),
                                      'openDate': serializeParam(
                                        getJsonField(
                                          memberListItem,
                                          r'''$.OpenDate''',
                                        ).toString(),
                                        ParamType.String,
                                      ),
                                    }.withoutNulls,
                                  );

                                  FFAppState().AcNo = getJsonField(
                                    memberListItem,
                                    r'''$.AcNo''',
                                  ).toString();
                                  FFAppState().custName = getJsonField(
                                    memberListItem,
                                    r'''$.CustomerName''',
                                  ).toString();
                                  FFAppState().balance = getJsonField(
                                    memberListItem,
                                    r'''$.Balance''',
                                  ).toString();
                                  FFAppState().shadowBalance = getJsonField(
                                    memberListItem,
                                    r'''$.ShadowBalance''',
                                  ).toString();
                                  FFAppState().acAge = getJsonField(
                                    memberListItem,
                                    r'''$.AcAge''',
                                  ).toString();
                                  FFAppState().lastNvDate = getJsonField(
                                    memberListItem,
                                    r'''$.LastNvDate''',
                                  ).toString();
                                  FFAppState().openDate = getJsonField(
                                    memberListItem,
                                    r'''$.OpenDate''',
                                  ).toString();
                                  safeSetState(() {});
                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.3,
                                      decoration: BoxDecoration(),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.0, -1.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  5.0, 10.0, 5.0, 5.0),
                                          child: Text(
                                            getJsonField(
                                              memberListItem,
                                              r'''$.AcNo''',
                                            ).toString(),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Inter',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.7,
                                      decoration: BoxDecoration(),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5.0, 10.0, 5.0, 10.0),
                                        child: Text(
                                          getJsonField(
                                            memberListItem,
                                            r'''$.CustomerName''',
                                          ).toString(),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Inter',
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        },
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
