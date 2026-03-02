import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'submit_collection_widget.dart' show SubmitCollectionWidget;
import 'package:flutter/material.dart';

class SubmitCollectionModel extends FlutterFlowModel<SubmitCollectionWidget> {
  ///  Local state fields for this page.

  bool btnSubmit = false;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextFiledBatchNo widget.
  FocusNode? textFiledBatchNoFocusNode;
  TextEditingController? textFiledBatchNoTextController;
  String? Function(BuildContext, String?)?
      textFiledBatchNoTextControllerValidator;
  // State field(s) for BrWorkingDate widget.
  FocusNode? brWorkingDateFocusNode;
  TextEditingController? brWorkingDateTextController;
  String? Function(BuildContext, String?)? brWorkingDateTextControllerValidator;
  // State field(s) for appDate widget.
  FocusNode? appDateFocusNode;
  TextEditingController? appDateTextController;
  String? Function(BuildContext, String?)? appDateTextControllerValidator;
  // State field(s) for CloseDate widget.
  FocusNode? closeDateFocusNode;
  TextEditingController? closeDateTextController;
  String? Function(BuildContext, String?)? closeDateTextControllerValidator;
  // State field(s) for lastSubmitDate widget.
  FocusNode? lastSubmitDateFocusNode;
  TextEditingController? lastSubmitDateTextController;
  String? Function(BuildContext, String?)?
      lastSubmitDateTextControllerValidator;
  // State field(s) for pigmyTotalRecipt widget.
  FocusNode? pigmyTotalReciptFocusNode;
  TextEditingController? pigmyTotalReciptTextController;
  String? Function(BuildContext, String?)?
      pigmyTotalReciptTextControllerValidator;
  // State field(s) for pigmyCollAmt widget.
  FocusNode? pigmyCollAmtFocusNode;
  TextEditingController? pigmyCollAmtTextController;
  String? Function(BuildContext, String?)? pigmyCollAmtTextControllerValidator;
  // State field(s) for loanTotalRiept widget.
  FocusNode? loanTotalRieptFocusNode;
  TextEditingController? loanTotalRieptTextController;
  String? Function(BuildContext, String?)?
      loanTotalRieptTextControllerValidator;
  // State field(s) for loanCollAmt widget.
  FocusNode? loanCollAmtFocusNode;
  TextEditingController? loanCollAmtTextController;
  String? Function(BuildContext, String?)? loanCollAmtTextControllerValidator;
  // State field(s) for RDTotalRiept widget.
  FocusNode? rDTotalRieptFocusNode;
  TextEditingController? rDTotalRieptTextController;
  String? Function(BuildContext, String?)? rDTotalRieptTextControllerValidator;
  // State field(s) for RDCollAmt widget.
  FocusNode? rDCollAmtFocusNode;
  TextEditingController? rDCollAmtTextController;
  String? Function(BuildContext, String?)? rDCollAmtTextControllerValidator;
  // Stores action output result for [Backend Call - API (SubmitCollection)] action in Buttonsubmit widget.
  ApiCallResponse? submitCollSubmit;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFiledBatchNoFocusNode?.dispose();
    textFiledBatchNoTextController?.dispose();

    brWorkingDateFocusNode?.dispose();
    brWorkingDateTextController?.dispose();

    appDateFocusNode?.dispose();
    appDateTextController?.dispose();

    closeDateFocusNode?.dispose();
    closeDateTextController?.dispose();

    lastSubmitDateFocusNode?.dispose();
    lastSubmitDateTextController?.dispose();

    pigmyTotalReciptFocusNode?.dispose();
    pigmyTotalReciptTextController?.dispose();

    pigmyCollAmtFocusNode?.dispose();
    pigmyCollAmtTextController?.dispose();

    loanTotalRieptFocusNode?.dispose();
    loanTotalRieptTextController?.dispose();

    loanCollAmtFocusNode?.dispose();
    loanCollAmtTextController?.dispose();

    rDTotalRieptFocusNode?.dispose();
    rDTotalRieptTextController?.dispose();

    rDCollAmtFocusNode?.dispose();
    rDCollAmtTextController?.dispose();
  }
}
