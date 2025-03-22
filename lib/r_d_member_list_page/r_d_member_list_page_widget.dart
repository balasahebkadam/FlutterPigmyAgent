import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'r_d_member_list_page_model.dart';
export 'r_d_member_list_page_model.dart';

class RDMemberListPageWidget extends StatefulWidget {
  const RDMemberListPageWidget({
    super.key,
    required this.schemeId,
  });

  final String? schemeId;

  static String routeName = 'RDMemberListPage';
  static String routePath = '/rDMemberListPage';

  @override
  State<RDMemberListPageWidget> createState() => _RDMemberListPageWidgetState();
}

class _RDMemberListPageWidgetState extends State<RDMemberListPageWidget> {
  late RDMemberListPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RDMemberListPageModel());
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
          automaticallyImplyLeading: true,
          title: Text(
            'RD MemberList',
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
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: MediaQuery.sizeOf(context).width * 0.3,
                          decoration: BoxDecoration(),
                          child: Text(
                            'A/c No',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.sizeOf(context).width * 0.7,
                          decoration: BoxDecoration(),
                          child: Text(
                            'Customer Name',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  FutureBuilder<ApiCallResponse>(
                    future: RDMemberListCall.call(
                      serverAddress: FFAppState().serverAddress,
                      iPName: FFAppState().ipname,
                      agentID: FFAppState().agentId,
                      token: FFAppState().token,
                      schemeId: widget.schemeId,
                      acno: '0',
                      mobileNo: FFAppState().mobileNumber,
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
                      final listViewRDMemberListResponse = snapshot.data!;

                      return Builder(
                        builder: (context) {
                          final rDMemberList = getJsonField(
                            listViewRDMemberListResponse.jsonBody,
                            r'''$.RDMemberList''',
                          ).toList();

                          return ListView.builder(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: rDMemberList.length,
                            itemBuilder: (context, rDMemberListIndex) {
                              final rDMemberListItem =
                                  rDMemberList[rDMemberListIndex];
                              return Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 0.0, 0.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed(
                                        RecurringDepositeReceiptWidget
                                            .routeName);

                                    FFAppState().AcNo = getJsonField(
                                      rDMemberListItem,
                                      r'''$.AcNo''',
                                    ).toString();
                                    FFAppState().custName = getJsonField(
                                      rDMemberListItem,
                                      r'''$.CustomerName''',
                                    ).toString();
                                    FFAppState().balance = getJsonField(
                                      rDMemberListItem,
                                      r'''$.Balance''',
                                    ).toString();
                                    FFAppState().shadowBalance = getJsonField(
                                      rDMemberListItem,
                                      r'''$.ShadowBalance''',
                                    ).toString();
                                    FFAppState().DepositDate = getJsonField(
                                      rDMemberListItem,
                                      r'''$.DepositDate''',
                                    ).toString();
                                    FFAppState().MaturityDate = getJsonField(
                                      rDMemberListItem,
                                      r'''$.MaturityDate''',
                                    ).toString();
                                    FFAppState().DepositAmount = getJsonField(
                                      rDMemberListItem,
                                      r'''$.DepositAmount''',
                                    ).toString();
                                    FFAppState().SchemeId = widget.schemeId!;
                                    safeSetState(() {});
                                  },
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.3,
                                        decoration: BoxDecoration(),
                                        child: Text(
                                          getJsonField(
                                            rDMemberListItem,
                                            r'''$.AcNo''',
                                          ).toString(),
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Inter',
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.7,
                                        decoration: BoxDecoration(),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 10.0, 0.0, 0.0),
                                          child: Text(
                                            getJsonField(
                                              rDMemberListItem,
                                              r'''$.CustomerName''',
                                            ).toString(),
                                            textAlign: TextAlign.center,
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
