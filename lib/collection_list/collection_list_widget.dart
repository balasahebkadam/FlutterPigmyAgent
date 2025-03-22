import '';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'collection_list_model.dart';
export 'collection_list_model.dart';

class CollectionListWidget extends StatefulWidget {
  const CollectionListWidget({super.key});

  static String routeName = 'CollectionList';
  static String routePath = '/collectionList';

  @override
  State<CollectionListWidget> createState() => _CollectionListWidgetState();
}

class _CollectionListWidgetState extends State<CollectionListWidget> {
  late CollectionListModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CollectionListModel());

    _model.textFieldDateTextController ??= TextEditingController(
        text: dateTimeFormat("dd/mm/yyyy", _model.datePicked));
    _model.textFieldDateFocusNode ??= FocusNode();
    _model.textFieldDateFocusNode!.addListener(() => safeSetState(() {}));
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
            'Collection List',
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
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(5.0, 10.0, 5.0, 5.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 0.7,
                        child: TextFormField(
                          controller: _model.textFieldDateTextController,
                          focusNode: _model.textFieldDateFocusNode,
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            isDense: true,
                            labelText: 'Enter valid date',
                            labelStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Inter',
                                  letterSpacing: 0.0,
                                ),
                            hintStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Inter',
                                  letterSpacing: 0.0,
                                ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).primary,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).primary,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            filled: true,
                            fillColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                          cursorColor: FlutterFlowTheme.of(context).primaryText,
                          validator: _model.textFieldDateTextControllerValidator
                              .asValidator(context),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 5.0, 5.0),
                    child: FlutterFlowIconButton(
                      borderRadius: 8.0,
                      buttonSize: 40.0,
                      fillColor: FlutterFlowTheme.of(context).primary,
                      icon: Icon(
                        Icons.calendar_month_outlined,
                        color: FlutterFlowTheme.of(context).info,
                        size: 24.0,
                      ),
                      onPressed: () async {
                        final _datePickedDate = await showDatePicker(
                          context: context,
                          initialDate: getCurrentTimestamp,
                          firstDate: DateTime(1900),
                          lastDate: DateTime(2050),
                          builder: (context, child) {
                            return wrapInMaterialDatePickerTheme(
                              context,
                              child!,
                              headerBackgroundColor:
                                  FlutterFlowTheme.of(context).primary,
                              headerForegroundColor:
                                  FlutterFlowTheme.of(context).info,
                              headerTextStyle: FlutterFlowTheme.of(context)
                                  .headlineLarge
                                  .override(
                                    fontFamily: 'Inter Tight',
                                    fontSize: 32.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                              pickerBackgroundColor:
                                  FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                              pickerForegroundColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              selectedDateTimeBackgroundColor:
                                  FlutterFlowTheme.of(context).primary,
                              selectedDateTimeForegroundColor:
                                  FlutterFlowTheme.of(context).info,
                              actionButtonForegroundColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              iconSize: 24.0,
                            );
                          },
                        );

                        if (_datePickedDate != null) {
                          safeSetState(() {
                            _model.datePicked = DateTime(
                              _datePickedDate.year,
                              _datePickedDate.month,
                              _datePickedDate.day,
                            );
                          });
                        } else if (_model.datePicked != null) {
                          safeSetState(() {
                            _model.datePicked = getCurrentTimestamp;
                          });
                        }
                        FFAppState().dateValue =
                            dateTimeFormat("d/M/y", _model.datePicked);
                        safeSetState(() {});
                        safeSetState(() {
                          _model.textFieldDateTextController?.text =
                              FFAppState().dateValue;
                        });
                      },
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width * 0.5,
                    height: 50.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: FlutterFlowDropDown<String>(
                      controller: _model.dropDownOperationValueController ??=
                          FormFieldController<String>(
                        _model.dropDownOperationValue ??= '',
                      ),
                      options: List<String>.from(['Detailed', 'Summary']),
                      optionLabels: ['Detailed', 'Summary'],
                      onChanged: (val) => safeSetState(
                          () => _model.dropDownOperationValue = val),
                      width: 200.0,
                      height: 40.0,
                      textStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                fontFamily: 'Inter',
                                letterSpacing: 0.0,
                              ),
                      hintText: 'Select...',
                      icon: Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      fillColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      elevation: 2.0,
                      borderColor: Colors.transparent,
                      borderWidth: 0.0,
                      borderRadius: 8.0,
                      margin:
                          EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                      hidesUnderline: true,
                      disabled: _model.isButtonclick == true,
                      isOverButton: false,
                      isSearchable: false,
                      isMultiSelect: false,
                    ),
                  ),
                  Container(
                    width: MediaQuery.sizeOf(context).width * 0.5,
                    height: 50.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: FlutterFlowDropDown<String>(
                      controller: _model.dropDownOptionValueController ??=
                          FormFieldController<String>(null),
                      options: ['All', 'Pigmy', 'Loan', 'R.D.'],
                      onChanged: (val) =>
                          safeSetState(() => _model.dropDownOptionValue = val),
                      width: 200.0,
                      height: 40.0,
                      textStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                fontFamily: 'Inter',
                                letterSpacing: 0.0,
                              ),
                      hintText: 'Select...',
                      icon: Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      fillColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      elevation: 2.0,
                      borderColor: Colors.transparent,
                      borderWidth: 0.0,
                      borderRadius: 8.0,
                      margin:
                          EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                      hidesUnderline: true,
                      disabled: _model.isButtonclick == true,
                      isOverButton: false,
                      isSearchable: false,
                      isMultiSelect: false,
                    ),
                  ),
                ],
              ),
              FFButtonWidget(
                onPressed: (_model.isButtonclick == true)
                    ? null
                    : () async {
                        if ((_model.textFieldDateTextController.text !=
                                    '') &&
                            (_model.dropDownOperationValue != null &&
                                _model.dropDownOperationValue != '') &&
                            (_model.dropDownOptionValue != null &&
                                _model.dropDownOptionValue != '')) {
                          _model.collectionListResponse =
                              await CollectionListCall.call(
                            serverAddress: FFAppState().serverAddress,
                            iPName: FFAppState().ipname,
                            mobileNo: FFAppState().mobileNumber,
                            agentID: FFAppState().agentId,
                            token: FFAppState().token,
                            trnDate: _model.textFieldDateTextController.text,
                            opr: functions
                                .oprFunction(_model.dropDownOperationValue),
                            option: functions
                                .optionFunction(_model.dropDownOptionValue),
                          );

                          if ((_model.collectionListResponse?.succeeded ??
                              true)) {
                            if (CollectionListCall.flag(
                                  (_model.collectionListResponse?.jsonBody ??
                                      ''),
                                )?.take(1).toList().firstOrNull ==
                                1) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    CollectionListCall.msg(
                                      (_model.collectionListResponse
                                              ?.jsonBody ??
                                          ''),
                                    )!
                                        .take(1)
                                        .toList()
                                        .firstOrNull!,
                                    style: TextStyle(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                    ),
                                  ),
                                  duration: Duration(milliseconds: 4000),
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).secondary,
                                ),
                              );
                              _model.isButtonclick = true;
                              safeSetState(() {});
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    CollectionListCall.msg(
                                      (_model.collectionListResponse
                                              ?.jsonBody ??
                                          ''),
                                    )!
                                        .take(1)
                                        .toList()
                                        .firstOrNull!,
                                    style: TextStyle(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                    ),
                                  ),
                                  duration: Duration(milliseconds: 4000),
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).secondary,
                                ),
                              );
                            }
                          }
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Select All Details',
                                style: TextStyle(
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                ),
                              ),
                              duration: Duration(milliseconds: 4000),
                              backgroundColor:
                                  FlutterFlowTheme.of(context).secondary,
                            ),
                          );
                        }

                        safeSetState(() {});
                      },
                text: 'Button',
                options: FFButtonOptions(
                  height: 40.0,
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: _model.isButtonclick
                      ? Color(0xFF676869)
                      : FlutterFlowTheme.of(context).primary,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Inter Tight',
                        color: Colors.white,
                        letterSpacing: 0.0,
                      ),
                  elevation: 0.0,
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              if ((_model.dropDownOperationValue == 'Detailed') &&
                  (CollectionListCall.flag(
                        (_model.collectionListResponse?.jsonBody ?? ''),
                      )?.take(1).toList().firstOrNull ==
                      1))
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 5.0, 0.0, 5.0),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 0.2,
                            decoration: BoxDecoration(),
                            child: Text(
                              'A/c No',
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
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 5.0, 0.0, 5.0),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 0.5,
                            decoration: BoxDecoration(),
                            child: Text(
                              'Customer Name',
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
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 5.0, 0.0, 5.0),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 0.3,
                            decoration: BoxDecoration(),
                            child: Text(
                              'Amount',
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
                    Builder(
                      builder: (context) {
                        final collectionList =
                            CollectionListCall.collectionList(
                                  (_model.collectionListResponse?.jsonBody ??
                                      ''),
                                )?.toList() ??
                                [];

                        return ListView.builder(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: collectionList.length,
                          itemBuilder: (context, collectionListIndex) {
                            final collectionListItem =
                                collectionList[collectionListIndex];
                            return Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 5.0, 0.0, 5.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(),
                                        child: Text(
                                          getJsonField(
                                            collectionListItem,
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
                                      Container(
                                        decoration: BoxDecoration(),
                                        child: Text(
                                          getJsonField(
                                            collectionListItem,
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
                                      Container(
                                        decoration: BoxDecoration(),
                                        child: Text(
                                          getJsonField(
                                            collectionListItem,
                                            r'''$.TrnAmt''',
                                          ).toString(),
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Inter',
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [],
                                ),
                              ],
                            );
                          },
                        );
                      },
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: MediaQuery.sizeOf(context).width * 0.2,
                          decoration: BoxDecoration(),
                          child: Text(
                            'Total',
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
                          width: MediaQuery.sizeOf(context).width * 0.5,
                          decoration: BoxDecoration(),
                          child: Text(
                            valueOrDefault<String>(
                              () {
                                if (_model.dropDownOptionValue == 'All') {
                                  return CollectionListCall.totalAcNo(
                                    (_model.collectionListResponse?.jsonBody ??
                                        ''),
                                  )?.take(1).toList().firstOrNull?.toString();
                                } else if (_model.dropDownOptionValue ==
                                    'Pigmy') {
                                  return CollectionListCall.totalAcNo(
                                    (_model.collectionListResponse?.jsonBody ??
                                        ''),
                                  )?.take(1).toList().firstOrNull?.toString();
                                } else if (_model.dropDownOptionValue ==
                                    'Loan') {
                                  return CollectionListCall.totalLoanAcNo(
                                    (_model.collectionListResponse?.jsonBody ??
                                        ''),
                                  )?.take(1).toList().firstOrNull?.toString();
                                } else if (_model.dropDownOptionValue ==
                                    'R.D.') {
                                  return CollectionListCall.totalRDAcNo(
                                    (_model.collectionListResponse?.jsonBody ??
                                        ''),
                                  )?.take(1).toList().firstOrNull?.toString();
                                } else {
                                  return CollectionListCall.totalAcNo(
                                    (_model.collectionListResponse?.jsonBody ??
                                        ''),
                                  )?.take(1).toList().firstOrNull?.toString();
                                }
                              }(),
                              'total a/c no',
                            ),
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
                          width: MediaQuery.sizeOf(context).width * 0.3,
                          decoration: BoxDecoration(),
                          child: Text(
                            valueOrDefault<String>(
                              () {
                                if (_model.dropDownOptionValue == 'All') {
                                  return CollectionListCall.totalCollAmt(
                                    (_model.collectionListResponse?.jsonBody ??
                                        ''),
                                  )?.take(1).toList().firstOrNull?.toString();
                                } else if (_model.dropDownOptionValue ==
                                    'Pigmy') {
                                  return CollectionListCall.totalCollAmt(
                                    (_model.collectionListResponse?.jsonBody ??
                                        ''),
                                  )?.take(1).toList().firstOrNull?.toString();
                                } else if (_model.dropDownOptionValue ==
                                    'Loan') {
                                  return CollectionListCall.totalLoanCollAmt(
                                    (_model.collectionListResponse?.jsonBody ??
                                        ''),
                                  )?.take(1).toList().firstOrNull?.toString();
                                } else if (_model.dropDownOptionValue ==
                                    'R.D.') {
                                  return CollectionListCall.totalRDCollAmt(
                                    (_model.collectionListResponse?.jsonBody ??
                                        ''),
                                  )?.take(1).toList().firstOrNull?.toString();
                                } else {
                                  return CollectionListCall.totalCollAmt(
                                    (_model.collectionListResponse?.jsonBody ??
                                        ''),
                                  )?.take(1).toList().firstOrNull?.toString();
                                }
                              }(),
                              'total amt',
                            ),
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              if ((_model.dropDownOperationValue == 'Summary') &&
                  (CollectionListCall.flag(
                        (_model.collectionListResponse?.jsonBody ?? ''),
                      )?.take(1).toList().firstOrNull ==
                      1))
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 5.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            decoration: BoxDecoration(),
                            child: Text(
                              'Total A/c No.',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(),
                            child: Text(
                              'Total coll. Amt',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 5.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            decoration: BoxDecoration(),
                            child: Text(
                              valueOrDefault<String>(
                                () {
                                  if (_model.dropDownOptionValue == 'All') {
                                    return CollectionListCall.totalAcNo(
                                      (_model.collectionListResponse
                                              ?.jsonBody ??
                                          ''),
                                    )
                                        ?.take(1)
                                        .toList()
                                        .firstOrNull
                                        ?.toString();
                                  } else if (_model.dropDownOptionValue ==
                                      'Pigmy') {
                                    return CollectionListCall.totalAcNo(
                                      (_model.collectionListResponse
                                              ?.jsonBody ??
                                          ''),
                                    )
                                        ?.take(1)
                                        .toList()
                                        .firstOrNull
                                        ?.toString();
                                  } else if (_model.dropDownOptionValue ==
                                      'Loan') {
                                    return CollectionListCall.totalLoanAcNo(
                                      (_model.collectionListResponse
                                              ?.jsonBody ??
                                          ''),
                                    )
                                        ?.take(1)
                                        .toList()
                                        .firstOrNull
                                        ?.toString();
                                  } else if (_model.dropDownOptionValue ==
                                      'R.D.') {
                                    return CollectionListCall.totalRDAcNo(
                                      (_model.collectionListResponse
                                              ?.jsonBody ??
                                          ''),
                                    )
                                        ?.take(1)
                                        .toList()
                                        .firstOrNull
                                        ?.toString();
                                  } else {
                                    return CollectionListCall.totalAcNo(
                                      (_model.collectionListResponse
                                              ?.jsonBody ??
                                          ''),
                                    )
                                        ?.take(1)
                                        .toList()
                                        .firstOrNull
                                        ?.toString();
                                  }
                                }(),
                                'totsl  a/c',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(),
                            child: Text(
                              valueOrDefault<String>(
                                () {
                                  if (_model.dropDownOptionValue == 'All') {
                                    return CollectionListCall.totalCollAmt(
                                      (_model.collectionListResponse
                                              ?.jsonBody ??
                                          ''),
                                    )
                                        ?.take(1)
                                        .toList()
                                        .firstOrNull
                                        ?.toString();
                                  } else if (_model.dropDownOptionValue ==
                                      'Pigmy') {
                                    return CollectionListCall.totalCollAmt(
                                      (_model.collectionListResponse
                                              ?.jsonBody ??
                                          ''),
                                    )
                                        ?.take(1)
                                        .toList()
                                        .firstOrNull
                                        ?.toString();
                                  } else if (_model.dropDownOptionValue ==
                                      'Loan') {
                                    return CollectionListCall.totalLoanCollAmt(
                                      (_model.collectionListResponse
                                              ?.jsonBody ??
                                          ''),
                                    )
                                        ?.take(1)
                                        .toList()
                                        .firstOrNull
                                        ?.toString();
                                  } else if (_model.dropDownOptionValue ==
                                      'R.D.') {
                                    return CollectionListCall.totalRDCollAmt(
                                      (_model.collectionListResponse
                                              ?.jsonBody ??
                                          ''),
                                    )
                                        ?.take(1)
                                        .toList()
                                        .firstOrNull
                                        ?.toString();
                                  } else {
                                    return CollectionListCall.totalCollAmt(
                                      (_model.collectionListResponse
                                              ?.jsonBody ??
                                          ''),
                                    )
                                        ?.take(1)
                                        .toList()
                                        .firstOrNull
                                        ?.toString();
                                  }
                                }(),
                                'total coll amt',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                        ],
                      ),
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
