import 'package:currency_converter/models/allCurrencies.dart';
import 'package:currency_converter/models/ratesmodel.dart';
import 'package:http/http.dart' as http;

Future<RatesModel> fetchrates() async {

 final response =await http.get(Uri.parse('https://openexchangerates.org/api/latest.json?app_id=232f21c550824a6caa8c542705139a1f'));
 print(response.body);
 final result=ratesModelFromJson(response.body);

return result;
}

Future<Map> fetchcurrencies() async {
  final response =await http.get(Uri.parse('https://openexchangerates.org/api/currencies.json?app_id=232f21c550824a6caa8c542705139a1f'));
  final allCurrencies= allCurrenciesFromJson(response.body);
  return allCurrencies;
}


String convertusd(Map exchangeRates,String usd,String currency){
  String output=((exchangeRates[currency] * double.parse(usd)).toStringAsFixed(2)).toString();
  return output;
}

String  convertany(Map exchangeRates,String amount,String currencybase,String currencyfinal){
  String output=((double.parse(amount) / exchangeRates[currencybase]) * exchangeRates[currencyfinal]).toStringAsFixed(2).toString();
  return output;
}