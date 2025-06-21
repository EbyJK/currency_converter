import 'package:currency_converter/models/ratesmodel.dart';
import 'package:http/http.dart' as http;

Future<RatesModel> fetchrates() async {

 final response =await http.get(Uri.parse('https://openexchangerates.org/api/latest.json?app_id=232f21c550824a6caa8c542705139a1f'));
 print(response.body);
 final result=ratesModelFromJson(response.body);

return result;
}