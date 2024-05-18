class CurrencyResponse {
  Meta? meta;
  Data? data;

  CurrencyResponse({this.meta, this.data});

  CurrencyResponse.fromJson(Map<String, dynamic> json) {
    meta = json['meta'] != null ? Meta.fromJson(json['meta']) : null;
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (meta != null) {
      data['meta'] = meta!.toJson();
    }
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Meta {
  String? lastUpdatedAt;

  Meta({this.lastUpdatedAt});

  Meta.fromJson(Map<String, dynamic> json) {
    lastUpdatedAt = json['last_updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['last_updated_at'] = lastUpdatedAt;
    return data;
  }
}

class Data {
  Currency? currency;

  Data({this.currency});

  Data.fromJson(Map<String, dynamic> json) {
    currency = json['Currency'] != null
        ? Currency.fromJson(json['Currency'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (currency != null) {
      data['Currency'] = currency!.toJson();
    }
    return data;
  }
}

class Currency {
  String? code;
  double? value;

  Currency({this.code, this.value});

  Currency.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['code'] = code;
    data['value'] = value;
    return data;
  }
}