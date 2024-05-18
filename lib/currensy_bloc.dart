import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;

part 'currensy_event.dart';

part 'currensy_state.dart';

const apiKey = "cur_live_hKMMjh03Yv2dJWGE0sWZjVQoqjrPHkBYJU6SDGkW";
const baseUrl = "https://api.currencyapi.com/v3/latest";

class CurrensyBloc extends Bloc<CurrensyEvent, CurrensyState> {
  CurrensyBloc() : super(CurrensyInitial()) {
    on<CurrensyEvent>((event, emit) async {
      if (event is OnGenerate) {
        final response =
            await http.get(Uri.parse("$baseUrl?base_currency=${event.from}&currencies=${event.to}&apikey=$apiKey"));
        final map = jsonDecode(response.body).toString();
        final startIndex = map.indexOf("value");
        final value = map.substring(startIndex + 6, map.length - 3);
        emit(CurrencySuccess(double.tryParse(value)));
      }
    });
  }
}
