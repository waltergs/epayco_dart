import 'package:epayco_flutter/data/models/bank.dart';
import 'package:epayco_flutter/domain/entities/api_responses/get_banks_entity.dart';

class GetBanksResponse extends GetBanksResponseEntity {
  GetBanksResponse({
    super.success,
    super.titleResponse,
    super.textResponse,
    super.lastAction,
    super.data,
  });

  factory GetBanksResponse.fromJson(Map<String, dynamic> json) {
    return GetBanksResponse(
      success: json['success'],
      titleResponse: json['title_response'],
      textResponse: json['text_response'],
      lastAction: json['last_action'],
      data: json['data'] != null
          ? List<Bank>.from(json['data'].map((x) => Bank.fromJson(x)))
          : null,
    );
  }
}
