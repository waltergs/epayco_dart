import 'package:epayco_dart/domain/entities/bank_entity.dart';

class Bank extends BankEntity {
  Bank({
    required super.bankCode,
    required super.bankName,
  });

  factory Bank.fromJson(Map<String, dynamic> json) {
    return Bank(
      bankCode: json['bankCode'].toString(),
      bankName: json['bankName'],
    );
  }
}
