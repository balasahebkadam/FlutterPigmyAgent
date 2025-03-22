import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'reciept_widget.dart' show RecieptWidget;
import 'package:flutter/material.dart';

class RecieptModel extends FlutterFlowModel<RecieptWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for ReciptNo widget.
  FocusNode? reciptNoFocusNode;
  TextEditingController? reciptNoTextController;
  String? Function(BuildContext, String?)? reciptNoTextControllerValidator;
  // State field(s) for RecieptDate widget.
  FocusNode? recieptDateFocusNode;
  TextEditingController? recieptDateTextController;
  String? Function(BuildContext, String?)? recieptDateTextControllerValidator;
  // State field(s) for AcNo widget.
  FocusNode? acNoFocusNode;
  TextEditingController? acNoTextController;
  String? Function(BuildContext, String?)? acNoTextControllerValidator;
  // Stores action output result for [Backend Call - API (MemberList)] action in IconButton widget.
  ApiCallResponse? memberListResponse;
  // State field(s) for MemberName widget.
  FocusNode? memberNameFocusNode;
  TextEditingController? memberNameTextController;
  String? Function(BuildContext, String?)? memberNameTextControllerValidator;
  // State field(s) for Balance widget.
  FocusNode? balanceFocusNode;
  TextEditingController? balanceTextController;
  String? Function(BuildContext, String?)? balanceTextControllerValidator;
  // State field(s) for ShadowBalance widget.
  FocusNode? shadowBalanceFocusNode;
  TextEditingController? shadowBalanceTextController;
  String? Function(BuildContext, String?)? shadowBalanceTextControllerValidator;
  // State field(s) for AcOpenDate widget.
  FocusNode? acOpenDateFocusNode;
  TextEditingController? acOpenDateTextController;
  String? Function(BuildContext, String?)? acOpenDateTextControllerValidator;
  // State field(s) for DrDate widget.
  FocusNode? drDateFocusNode;
  TextEditingController? drDateTextController;
  String? Function(BuildContext, String?)? drDateTextControllerValidator;
  // State field(s) for AccountAge widget.
  FocusNode? accountAgeFocusNode;
  TextEditingController? accountAgeTextController;
  String? Function(BuildContext, String?)? accountAgeTextControllerValidator;
  // State field(s) for AccountRemark widget.
  FocusNode? accountRemarkFocusNode;
  TextEditingController? accountRemarkTextController;
  String? Function(BuildContext, String?)? accountRemarkTextControllerValidator;
  // State field(s) for CollectionAmt widget.
  FocusNode? collectionAmtFocusNode;
  TextEditingController? collectionAmtTextController;
  String? Function(BuildContext, String?)? collectionAmtTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    reciptNoFocusNode?.dispose();
    reciptNoTextController?.dispose();

    recieptDateFocusNode?.dispose();
    recieptDateTextController?.dispose();

    acNoFocusNode?.dispose();
    acNoTextController?.dispose();

    memberNameFocusNode?.dispose();
    memberNameTextController?.dispose();

    balanceFocusNode?.dispose();
    balanceTextController?.dispose();

    shadowBalanceFocusNode?.dispose();
    shadowBalanceTextController?.dispose();

    acOpenDateFocusNode?.dispose();
    acOpenDateTextController?.dispose();

    drDateFocusNode?.dispose();
    drDateTextController?.dispose();

    accountAgeFocusNode?.dispose();
    accountAgeTextController?.dispose();

    accountRemarkFocusNode?.dispose();
    accountRemarkTextController?.dispose();

    collectionAmtFocusNode?.dispose();
    collectionAmtTextController?.dispose();
  }
}
