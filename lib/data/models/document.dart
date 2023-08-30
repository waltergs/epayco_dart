import 'package:epayco_flutter/domain/entities/document_entity.dart';

class Document extends DocumentEntity {
  Document({
    super.id,
    super.name,
    super.cod,
    super.description,
  });

  factory Document.fromJson(Map<String, dynamic> json) {
    return Document(
      id: json['id'],
      name: json['name'],
      cod: json['cod'],
      description: json['description'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'cod': cod,
      'description': description,
    };
  }
}
