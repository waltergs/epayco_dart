import 'package:epayco_flutter/domain/entities/bank_entity.dart';

abstract class GetBanksResponseEntity {
  final bool? success;
  final String? titleResponse;
  final String? textResponse;
  final String? lastAction;
  final List<BankEntity>? data;

  GetBanksResponseEntity({
    this.success,
    this.titleResponse,
    this.textResponse,
    this.lastAction,
    this.data,
  });
}
