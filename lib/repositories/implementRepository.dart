
import 'dart:convert';

import 'package:hobbiton_flutter_api_project/models/quotes.dart';
import 'package:hobbiton_flutter_api_project/repositories/repository.dart';
import 'package:http/http.dart' as http;

class ImplementRepository implements QuotesRepository {

  String quotesUri = "https://type.fit/api/quotes";
  @override
  Future<List<Quotes>> getQuotes() async{
   List<Quotes> quotes = [];
   
   var uri = Uri.parse(quotesUri);
   var response = await http.get(uri);
   print('status code: ${response.statusCode}');
   var fromJson = json.decode(response.body);

   for (var i = 0; i < fromJson.length; i++) {
     quotes.add(Quotes.fromJson(fromJson[i]));
   }
   return quotes;
   
  }

}